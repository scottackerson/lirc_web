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
        <a href="#" id="getArtists" onClick= "getArtists('a')" class="btn btn-primary btn-lg" role="button">A</a>
        <a href="#" id="getArtists" onClick= "getArtists('b')" class="btn btn-primary btn-lg" role="button">B</a>
        <a href="#" id="getArtists" onClick= "getArtists('c')" class="btn btn-primary btn-lg" role="button">C</a>
        <a href="#" id="getArtists" onClick= "getArtists('d')" class="btn btn-primary btn-lg" role="button">D</a>
        <a href="#" id="getArtists" onClick= "getArtists('e')" class="btn btn-primary btn-lg" role="button">E</a>
        <a href="#" id="getArtists" onClick= "getArtists('f')" class="btn btn-primary btn-lg" role="button">F</a>
        <a href="#" id="getArtists" onClick= "getArtists('g')" class="btn btn-primary btn-lg" role="button">G</a>
        <a href="#" id="getArtists" onClick= "getArtists('h')" class="btn btn-primary btn-lg" role="button">H</a>
        <a href="#" id="getArtists" onClick= "getArtists('i')" class="btn btn-primary btn-lg" role="button">I</a>
        <a href="#" id="getArtists" onClick= "getArtists('j')" class="btn btn-primary btn-lg" role="button">J</a>
        <a href="#" id="getArtists" onClick= "getArtists('k')" class="btn btn-primary btn-lg" role="button">K</a>
        <a href="#" id="getArtists" onClick= "getArtists('l')" class="btn btn-primary btn-lg" role="button">L</a>
        <a href="#" id="getArtists" onClick= "getArtists('m')" class="btn btn-primary btn-lg" role="button">M</a>
        <a href="#" id="getArtists" onClick= "getArtists('n')" class="btn btn-primary btn-lg" role="button">N</a>
        <a href="#" id="getArtists" onClick= "getArtists('o')" class="btn btn-primary btn-lg" role="button">O</a>
        <a href="#" id="getArtists" onClick= "getArtists('p')" class="btn btn-primary btn-lg" role="button">P</a>
        <a href="#" id="getArtists" onClick= "getArtists('q')" class="btn btn-primary btn-lg" role="button">Q</a>
        <a href="#" id="getArtists" onClick= "getArtists('r')" class="btn btn-primary btn-lg" role="button">R</a>
        <a href="#" id="getArtists" onClick= "getArtists('s')" class="btn btn-primary btn-lg" role="button">S</a>
        <a href="#" id="getArtists" onClick= "getArtists('t')" class="btn btn-primary btn-lg" role="button">T</a>
        <a href="#" id="getArtists" onClick= "getArtists('u')" class="btn btn-primary btn-lg" role="button">U</a>
        <a href="#" id="getArtists" onClick= "getArtists('v')" class="btn btn-primary btn-lg" role="button">V</a>
        <a href="#" id="getArtists" onClick= "getArtists('w')" class="btn btn-primary btn-lg" role="button">W</a>
        <a href="#" id="getArtists" onClick= "getArtists('x')" class="btn btn-primary btn-lg" role="button">X</a>
        <a href="#" id="getArtists" onClick= "getArtists('y')" class="btn btn-primary btn-lg" role="button">Y</a>
        <a href="#" id="getArtists" onClick= "getArtists('z')" class="btn btn-primary btn-lg" role="button">Z</a>
      </div>
    </div>

    <div class="content-2-1">
      <div class="btn-group-vertical" id="artist-results"></div>
    </div>

    <div class="col-md-1" >
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

        $("#artist-results").html("");
        $("song-results").html("");
        $.getJSON('/apiartistlist?char='+character, function(data){
          $.each(data,function(i, value){
            $("#artist-results").append('<a href="#" id="getArtists" onClick= "getSongs(' + value.artist_id + ')" class="btn btn-primary btn-lg default artist-name" role="button">'+value.artist_name+'</a>');
          })
        });
      };

      function getSongs(artist_id, artist_name){
       $("#song-results").html("");
        $.getJSON('/apisongbyartistlist?artist_id='+artist_id, function(data){
        $.each(data,function(i, value){
            //$("#song-results").append('<a href="#" id="getArtists" class="btn btn-primary btn-lg default" role="button" onClick="changeTrack('+value.track+')">'+value.title+'</a>');
          $("#song-results").append('<button id="getArtists" class="btn btn-primary btn-lg default" role="button" data-toggle="modal" data-target="#'+value.track+'">'+value.title+'</button>');
          $("#modals").append('<div class="modal fade" id="'+value.track+'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button><h4 class="modal-title" id="myModalLabel">'+value.title+' - <a href="#" onClick="changeTrack('+value.track+')">Play</a></h4></div><div class="modal-body"><dl class="dl-horizontal"><dt>Last Played</dt><dd>'+value.last_played+'</dd><dt># of times played</dt><dd>'+value.times_played+'</dd><dt>Rating</dt><dd>* * * *</dd></dl></div><div class="modal-footer"><button type="button" class="btn btn-default" data-dismiss="modal">Close</button></div></div></div></div>');
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
