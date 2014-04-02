<!DOCTYPE HTML> 
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Remote</title>
    <link rel="apple-touch-icon" href="/images/mic.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="css/compiled/app.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/add2home.css">
    <script type="application/javascript" src="js/add2home.js"></script>

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
            <li><a href="/">By Artist</a></li>
            <li><a href="/karaokeremote">Karaoke Remote</a></li>
          </ul>
        </div>
      </div>
    </div>


{% for song in songs %}
  {% if loop.first %}<ul>{% endif %}
  <li><button class="btn btn-wide btn-large btn-warning macro-link" href="/byartist/{{ song.track }}">{{ song.artist }} - {{ song.title }} - {{ song.track }}</button></li>
  {% if loop.last %}</ul>{% endif %}
{% endfor %}

    <script src="js/compiled/app.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="js/stayInWebApp.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $(function() {
            $.stayInWebApp();
        });
      });
    </script>


  </body>
</html>
