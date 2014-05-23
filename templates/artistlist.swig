<!DOCTYPE HTML> 
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Mic Night!</title>
    <link rel="apple-touch-icon" href="/images/mic.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
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
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/">Mic Night!</a>
      </div>

      <div class="navbar-collapse collapse" style="height: 1px;">
        <ul class="nav navbar-nav">
          <li><a href="/bysongnumber">By Song Number</a></li>
          <li><a href="/artistlist">By Artist</a></li>
          <li><a href="/karaokeremote">Karaoke Remote</a></li>
        </ul>
      </div>
    </div>

    <div class="col-1">
      <div class="btn-group-vertical" >
        <a href="#" id="getArtists" onClick= "getArtists('a')" class="btn btn-primary btn-lg btn-override btn-override" role="button">A</a>
        <a href="#" id="getArtists" onClick= "getArtists('b')" class="btn btn-primary btn-lg btn-override" role="button">B</a>
        <a href="#" id="getArtists" onClick= "getArtists('c')" class="btn btn-primary btn-lg btn-override" role="button">C</a>
        <a href="#" id="getArtists" onClick= "getArtists('d')" class="btn btn-primary btn-lg btn-override" role="button">D</a>
        <a href="#" id="getArtists" onClick= "getArtists('e')" class="btn btn-primary btn-lg btn-override" role="button">E</a>
        <a href="#" id="getArtists" onClick= "getArtists('f')" class="btn btn-primary btn-lg btn-override" role="button">F</a>
        <a href="#" id="getArtists" onClick= "getArtists('g')" class="btn btn-primary btn-lg btn-override" role="button">G</a>
        <a href="#" id="getArtists" onClick= "getArtists('h')" class="btn btn-primary btn-lg btn-override" role="button">H</a>
        <a href="#" id="getArtists" onClick= "getArtists('i')" class="btn btn-primary btn-lg btn-override" role="button">I</a>
        <a href="#" id="getArtists" onClick= "getArtists('j')" class="btn btn-primary btn-lg btn-override" role="button">J</a>
        <a href="#" id="getArtists" onClick= "getArtists('k')" class="btn btn-primary btn-lg btn-override" role="button">K</a>
        <a href="#" id="getArtists" onClick= "getArtists('l')" class="btn btn-primary btn-lg btn-override" role="button">L</a>
        <a href="#" id="getArtists" onClick= "getArtists('m')" class="btn btn-primary btn-lg btn-override" role="button">M</a>
        <a href="#" id="getArtists" onClick= "getArtists('n')" class="btn btn-primary btn-lg btn-override" role="button">N</a>
        <a href="#" id="getArtists" onClick= "getArtists('o')" class="btn btn-primary btn-lg btn-override" role="button">O</a>
        <a href="#" id="getArtists" onClick= "getArtists('p')" class="btn btn-primary btn-lg btn-override" role="button">P</a>
        <a href="#" id="getArtists" onClick= "getArtists('q')" class="btn btn-primary btn-lg btn-override" role="button">Q</a>
        <a href="#" id="getArtists" onClick= "getArtists('r')" class="btn btn-primary btn-lg btn-override" role="button">R</a>
        <a href="#" id="getArtists" onClick= "getArtists('s')" class="btn btn-primary btn-lg btn-override" role="button">S</a>
        <a href="#" id="getArtists" onClick= "getArtists('t')" class="btn btn-primary btn-lg btn-override" role="button">T</a>
        <a href="#" id="getArtists" onClick= "getArtists('u')" class="btn btn-primary btn-lg btn-override" role="button">U</a>
        <a href="#" id="getArtists" onClick= "getArtists('v')" class="btn btn-primary btn-lg btn-override" role="button">V</a>
        <a href="#" id="getArtists" onClick= "getArtists('w')" class="btn btn-primary btn-lg btn-override" role="button">W</a>
        <a href="#" id="getArtists" onClick= "getArtists('x')" class="btn btn-primary btn-lg btn-override" role="button">X</a>
        <a href="#" id="getArtists" onClick= "getArtists('y')" class="btn btn-primary btn-lg btn-override" role="button">Y</a>
        <a href="#" id="getArtists" onClick= "getArtists('z')" class="btn btn-primary btn-lg btn-override" role="button">Z</a>
      </div>
    </div>

    <div class="content-2-1">
      <div class="btn-group-vertical" id="artist-results">
        <div class="thumbnail">
          <div class="caption">
            <h4>Last 5 songs</h4>
            <ul class="list-group">
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">You Can't Touch This - MC HAMMER </a></li>
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">Santaria - Sublime </a></li>
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">Undone - Weezer </a></li>
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">New York - Frank Sinatra </a></li>
            </ul>
          </div>
        </div>

        <div class="thumbnail">
          <div class="caption">
            <h4>Most Played Songs</h4>
            <ul class="list-group">
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">You Can't Touch This</a> <span class="badge">14</span></li>
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">Santaria</a><span class="badge">11</span></li>
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">Undone</a><span class="badge">11</span></li>
              <li class="list-group-item"><a href="#" id="getArtists" onClick= "changeTrack('123')">New York</a><span class="badge">9</span></li>
            </ul>
          </div>
        </div>

        <button type="button" class="btn btn-default btn-lg">Do You Feel Luck?</button>

      </div>
    </div>

    <div class="content-2-2" >
      <div class="btn-group-vertical" id="song-results"></div>
    </div>

    <div id="modals">

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
      $.ajaxSetup({ cache: false });

      function getArtists(character){ 
        $("#song-results").html("");
        $("#artist-results").html("");
      
        $.getJSON('/apiartistlist?char='+character, function(data){
          $.each(data,function(i, value){
            $("#artist-results").append('<a href="#" id="getArtists" onClick= "getSongs(' + value.artist_id + ')" class="btn btn-primary btn-lg btn-override default artist-name shadow-left" role="button">'+value.artist_name+'</a>');
          })
        });
      };

      function getSongs(artist_id, artist_name){
       $("#song-results").html("");
        $.getJSON('/apisongbyartistlist?artist_id='+artist_id, function(data){
        $.each(data,function(i, value){
          $("#song-results").append('<a href="#" id="getArtists" class="btn btn-primary btn-lg btn-override default shadow-left" role="button" onClick="changeTrack('+value.track+')">'+value.title+'</a>');
            })
        });
      }

      function changeTrack(track_id){
        $.get('/songnumber/'+track_id, function(data){
          console.log('get successful');
        });
      }
    </script>
  </body>
</html>
