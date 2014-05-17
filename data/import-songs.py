import numpy as np
from numpy import genfromtxt
import sqlite3, sys, getopt, logging, time, shutil, os

# backup existing database as a sanity check
shutil.copy('songs.db', 'backup/songs-' + time.strftime("%I%M%S") + '.db' )

logging.basicConfig(filename='song_import_results.log',level=logging.INFO)

database = 'songs.db'

logging.info('-------Beginning Import: ' + time.strftime("%I:%M:%S"))

def unique(items):
    found = set([])
    keep = []

    for item in items:
        if item not in found:
            found.add(item)
            keep.append(item)
    return keep

def search_artist(artist_name):
	with sqlite3.connect(database) as db:
		db.text_factory = str 
		cursor = db.cursor()
		cursor.execute("SELECT * FROM artists WHERE artist_name=?", (artist_name,))
		results = cursor.fetchone()
		return results

def add_artist(artist):
	with sqlite3.connect(database) as db:
		db.text_factory = str 
		cursor = db.cursor()
		cursor.execute("INSERT INTO artists (artist_name) VALUES (?)", artist)
		db.commit()	

def search_song(song_title):
	with sqlite3.connect(database) as db:
		db.text_factory = str 
		cursor = db.cursor()
		cursor.execute("SELECT * FROM songs WHERE title=?", (song_title,))
		results = cursor.fetchall()
		return results

def add_song(song, artist_id):
	logging.info('Adding: ' + song[2] + ' Track: ' + str(song[0]) + ' Artist: ' + song[1] + '(' + str(artist_id) + ')')
	with sqlite3.connect(database) as db:
		db.text_factory = str 
		cursor = db.cursor()
		cursor.execute("INSERT INTO songs (track, artist_id, title) VALUES (?,?,?)", (int(song[0]), artist_id, song[2],))
		db.commit()	

def update_song(track, artist_id, title):
	logging.info('Updating ' + item[2])
	with sqlite3.connect('songs.db') as db:
		db.text_factory = str 
		cursor = db.cursor()

# load artists
names = ["track", "artist", "title"] 
artists = np.genfromtxt('../songs.csv', delimiter='\t', names=names, dtype=None, usecols=("artist"))
artists = unique(artists.tolist())

# add to DB
for item in artists:
	add_artist(item)
	sys.stdout.write("adding artist")

# load or update songs
songs = np.genfromtxt('../songs.csv', delimiter='\t', names=names, dtype=None)
for item in songs:
	# search for song to see if it already exists
	results = search_song(item[2])

	# if song already exists, update track and artist information.
	if len(results) == 1:
		pass
	
	# add song if it does not exist
	if len(results) == 0:
		#Find artist
		artist_result = search_artist(item[1])

	if len(artist_result) > 0:
		add_song(item, artist_result[0])

	# if we get multiple results, log the issue
	if len(results) > 1:
		logging.info('Found too many ' + item[2] + 's')

logging.info('-------End Import: ' + time.strftime("%I:%M:%S"))

print "logged to import_songs_result.log"