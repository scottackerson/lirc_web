var sqlite = require('sqlite3').verbose();
var csv = require('fast-csv');
var songs = [];
var db = new sqlite.Database('songs.db');

//db.run('INSERT INTO artists (artist_name) VALUES ("testing")');
//db.finalize;

// Load song list
csv
.fromPath('../sample-songs.csv', {
    headers : ['track', 'artist', 'title'],
    ignoreEmpty: true
})
.on('record', function(data){
    songs.push(data);
})
.on('end', function(){
 console.log('Loaded ' + songs.length + ' songs');
 addArtists();
 addSongs();
 });

function closeDb() {
    console.log('closeDb');
    db.close();
}

//Read first record from file struct 
//Look for it in the database.  
//If it exists, do nothing.  
//If it doesn't, add it.

function addArtists() {
	console.log('Adding artists');
	var songLength = songs.length;
	for (var i = 0; i < songLength; i++) {
		//read by artist name
		console.log(i);
		console.log('looking for: ' + songs[i].artist)
		var statement = 'SELECT artist_name AS artist FROM artists WHERE artist_name = "Frank Sinatra "';
		db.all(statement, function(err, rows) {
			if (err) throw err;
			if (rows.length == 0) {
				console.log(songs[i].artist + ' was not found!');
			} else {
				console.log(i);
        	}
        });
	}
	console.log('Finished adding artists');
};

function addSongs() {
	console.log('Adding songs');
	console.log('Finished adding songs');
};

