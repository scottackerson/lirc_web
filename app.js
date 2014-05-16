// Based off of lirc_web by Alex Bain <alex@alexba.in>

// Requirements
var express = require('express'),
    lirc_node = require('lirc_node'),
    consolidate = require('consolidate'),
    path = require('path'),
    swig = require('swig'),
    sqlite3 = require('sqlite3').verbose();

// Precompile templates
var JST = {
    index: swig.compileFile(__dirname + '/templates/index.swig'),
    karaokeremote: swig.compileFile(__dirname + '/templates/karaokeremote.swig'),
    bysongnumber: swig.compileFile(__dirname + '/templates/bysongnumber.swig'),
    artistlist: swig.compileFile(__dirname + '/templates/artistlist.swig'),
    songlist: swig.compileFile(__dirname + '/templates/songlist.swig')
};

// Create app
var app = module.exports = express();

// App configuration
app.engine('.html', consolidate.swig);
app.configure(function() {
    app.use(express.logger());
    app.set('views', __dirname + '/views');
    app.set('view engine', 'jade');
    app.use(express.compress());
    app.use(express.static(__dirname + '/static'));
    app.use(express.bodyParser()); 
});

// lirc_web configuration
var config = {};

// Based on node environment, initialize connection to lirc_node or use test data
if (process.env.NODE_ENV == 'test' || process.env.NODE_ENV == 'development') {
    lirc_node.remotes = require(__dirname + '/test/fixtures/remotes.json');
    config = require(__dirname + '/test/fixtures/config.json');
} else {
    lirc_node.init();

    // Config file is optional
    try {
        config = require(__dirname + '/config.json');
    } catch(e) {
        console.log("DEBUG:", e);
        console.log("WARNING: Cannot find config.json!");
    }
}

var db = new sqlite3.Database('data/songs.db')

// Get artist by alpha character
function getArtistByCharacter(character, num_records, callback){
   var statement = "SELECT artist_name, artist_id FROM artists WHERE artist_name LIKE '"+character+"%'"
   console.log(statement);
   var artist_chars = db.all(statement,
      function(err, rows){
         if (err){
               console.log('Error serving querying database. ' + err);
               return;
                      }
         data = rows
         callback(data);
   });
};

// Get song by artist id
function getSongsByArtistID(artist_id, num_records, callback){
   var statement = "SELECT song_id, track, title, rating, times_played, last_played FROM songs WHERE artist_id = "+artist_id
   console.log(statement);
   var songs = db.all(statement,
      function(err, rows){
         if (err){
               console.log('Error serving querying database. ' + err);
               return;
                      }
         data = rows
         callback(data);
   });
};

// Get song by alpha character
function getSongsByCharacter(character, num_records, callback){
   var statement = "SELECT song_id, track, title, rating, times_played, last_played FROM songs WHERE title LIKE '"+character+"%'"
   console.log(statement);
   var songs = db.all(statement,
      function(err, rows){
         if (err){
               console.log('Error serving querying database. ' + err);
               return;
                      }
         data = rows
         console.log(JSON.stringify(data));
         callback(data);
   });
};
 
// Update song when played
function updateSong(track){
  var statement = "UPDATE songs SET times_played = times_played + 1, last_played = CURRENT_TIMESTAMP where track = "+track;
  console.log(statement);
  db.run(statement);
};

// Web UI
app.get('/', function(req, res) {
    res.send(JST['index'].render({
    }));
});

app.get('/bysongnumber', function(req, res) {
    res.send(JST['bysongnumber'].render({}));
});

app.get('/karaokeremote', function(req, res) {
    res.send(JST['karaokeremote'].render({}));
});

app.get('/apiartistlist', function(req, res) {
    getArtistByCharacter(req.query.char, 10, function(data){
        res.writeHead(200, { "Content-type": "application/json" });        
                  res.end(JSON.stringify(data), "ascii");
    });
});

app.get('/apisongbyartistlist', function(req, res) {
    console.log("here");
    getSongsByArtistID(req.query.artist_id, 10, function(data){
        res.writeHead(200, { "Content-type": "application/json" });        
                  res.end(JSON.stringify(data), "ascii");
    });
});

app.get('/apisongbycharacter', function(req, res) {
    getSongsByCharacter(req.query.char, 10, function(data){
        res.writeHead(200, { "Content-type": "application/json" });        
                  res.end(JSON.stringify(data), "ascii");
    });
});

app.get('/artistlist', function(req, res) {
    res.send(JST['artistlist'].render({
    }));
});

app.get('/songlist', function(req, res) {
    res.send(JST['songlist'].render({
    }));
});

// Send :remote/:command one time
app.post('/remotes/:remote/:command', function(req, res) {
    lirc_node.irsend.send_once(req.params.remote, req.params.command, function() {});
    console.log(req.params.command);
    res.setHeader('Cache-Control', 'no-cache');
    res.send(200);
});

// Start sending :remote/:command repeatedly
app.post('/remotes/:remote/:command/send_start', function(req, res) {
    lirc_node.irsend.send_start(req.params.remote, req.params.command, function() {});
    console.log(req.params.command);
    res.setHeader('Cache-Control', 'no-cache');
    res.send(200);
});

// Stop sending :remote/:command repeatedly
app.post('/remotes/:remote/:command/send_stop', function(req, res) {
    lirc_node.irsend.send_stop(req.params.remote, req.params.command, function() {});
    console.log(req.params.command);
    res.setHeader('Cache-Control', 'no-cache');
    res.send(200);
});

// Parse the post into several remote signals
app.post('/songnumber', function(req, res) {
    //read the post, parse it into several commands to be sent to lirc_node
    if (req.body.songnumber) { 
      var i = 0;
      var interval = function() {
          if (req.body.songnumber[i]) {
              var command = req.body.songnumber[i];
              lirc_node.irsend.send_once('karaoke', command[0], function() {});
              console.log("Sent " + command);
          } else {
              clearInterval(interval);
          }
          i += 1;
      };
      setInterval(interval, 200);
      updateSong(req.body.songnumber);
    }
    res.setHeader('Cache-Control', 'no-cache');
    res.redirect('/bysongnumber'); //need to redirect from request origination.
});

app.get('/songnumber/:track', function(req, res) {
    //read the post, parse it into several commands to be sent to lirc_node
    console.log('Changing song via GET: '+req.params.track);
    if (req.params.track) { 
        var i = 0;
        var interval = function() {
            if (req.params.track[i]) {
                var command = req.params.track[i];
                lirc_node.irsend.send_once('karaoke', command[0], function() {});
                console.log("Sent " + command);
            } else {
                clearInterval(interval);
            }
            i += 1;
        };
        setInterval(interval, 200);
        updateSong(req.params.track);
    }
    res.setHeader('Cache-Control', 'no-cache');
    res.send(200);
    //res.redirect('/bysongnumber'); //need to redirect from request origination.
});

// Default port is 3000
app.listen(3000);
console.log("Open Source Universal Remote UI + API has started on port 3000.");