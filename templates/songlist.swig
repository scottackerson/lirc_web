<!DOCTYPE HTML> 
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Karaoke Remote</title>
    <link rel="apple-touch-icon" href="/images/mic.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />

    <link rel="stylesheet" href="/css/compiled/app.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/add2home.css">

    <style type="text/css">
      body { background: #47454b; }
    </style>

  </head>
 
  <body ontouchstart="">
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Karaoke</a>
        </div>
        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul class="nav navbar-nav">
            <li><a href="/bysongnumber">By Song Number</a></li>
            <li><a href="/artistlist">By Artist</a></li>
            <li><a href="/karaokeremote">Karaoke Remote</a></li>
          </ul>
        </div>
      </div>
    </div>

  <div class="col-1">
    <div class="btn-group-vertical">
      <a href="#" id="getArtists" onClick= "getSongs('a')" class="btn btn-primary btn-lg" role="button">A</a>
      <a href="#" id="getArtists" onClick= "getSongs('b')" class="btn btn-primary btn-lg" role="button">B</a>
      <a href="#" id="getArtists" onClick= "getSongs('c')" class="btn btn-primary btn-lg" role="button">C</a>
      <a href="#" id="getArtists" onClick= "getSongs('d')" class="btn btn-primary btn-lg" role="button">D</a>
      <a href="#" id="getArtists" onClick= "getSongs('e')" class="btn btn-primary btn-lg" role="button">E</a>
      <a href="#" id="getArtists" onClick= "getSongs('f')" class="btn btn-primary btn-lg" role="button">F</a>
      <a href="#" id="getArtists" onClick= "getSongs('g')" class="btn btn-primary btn-lg" role="button">G</a>
      <a href="#" id="getArtists" onClick= "getSongs('h')" class="btn btn-primary btn-lg" role="button">H</a>
      <a href="#" id="getArtists" onClick= "getSongs('i')" class="btn btn-primary btn-lg" role="button">I</a>
      <a href="#" id="getArtists" onClick= "getSongs('j')" class="btn btn-primary btn-lg" role="button">J</a>
      <a href="#" id="getArtists" onClick= "getSongs('k')" class="btn btn-primary btn-lg" role="button">K</a>
      <a href="#" id="getArtists" onClick= "getSongs('l')" class="btn btn-primary btn-lg" role="button">L</a>
      <a href="#" id="getArtists" onClick= "getSongs('m')" class="btn btn-primary btn-lg" role="button">M</a>
      <a href="#" id="getArtists" onClick= "getSongs('n')" class="btn btn-primary btn-lg" role="button">N</a>
      <a href="#" id="getArtists" onClick= "getSongs('o')" class="btn btn-primary btn-lg" role="button">O</a>
      <a href="#" id="getArtists" onClick= "getSongs('p')" class="btn btn-primary btn-lg" role="button">P</a>
      <a href="#" id="getArtists" onClick= "getSongs('q')" class="btn btn-primary btn-lg" role="button">Q</a>
      <a href="#" id="getArtists" onClick= "getSongs('r')" class="btn btn-primary btn-lg" role="button">R</a>
      <a href="#" id="getArtists" onClick= "getSongs('s')" class="btn btn-primary btn-lg" role="button">S</a>
      <a href="#" id="getArtists" onClick= "getSongs('t')" class="btn btn-primary btn-lg" role="button">T</a>
      <a href="#" id="getArtists" onClick= "getSongs('u')" class="btn btn-primary btn-lg" role="button">U</a>
      <a href="#" id="getArtists" onClick= "getSongs('v')" class="btn btn-primary btn-lg" role="button">V</a>
      <a href="#" id="getArtists" onClick= "getSongs('w')" class="btn btn-primary btn-lg" role="button">W</a>
      <a href="#" id="getArtists" onClick= "getSongs('x')" class="btn btn-primary btn-lg" role="button">X</a>
      <a href="#" id="getArtists" onClick= "getSongs('y')" class="btn btn-primary btn-lg" role="button">Y</a>
      <a href="#" id="getArtists" onClick= "getSongs('z')" class="btn btn-primary btn-lg" role="button">Z</a>
    </div>
  </div>

  <div class="content-2-1">
    <div class="btn-group-vertical" id="song-results"></div>
  </div>

    <script src="/js/compiled/app.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="/js/stayInWebApp.js"></script>
    <script type="application/javascript" src="/js/add2home.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $(function() {
            $.stayInWebApp();
        });
        $.ajax({
          cache: false,
        });
      });
    </script>
    <script = type="text/javascript">

    function getSongs(character){ 
      $("song-results").html("");
      $.getJSON('/apisongbycharacter?char='+character, function(data){
        $.each(data,function(i, value){
          console.log(value);
          $("#song-results").append('<a href="#" id="getArtists" onClick= "getSongs(' + value.artist_id + ')" class="btn btn-primary btn-lg default artist-name" role="button">'+value.title+'</a>');

        })
      });
    };

    function changeTrack(track_id){
      $.get('/songnumber/'+track_id, function(data){
        console.log('get successful');
      });
    }

    </script>
  </body>
</html>
