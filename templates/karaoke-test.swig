<!DOCTYPE HTML> 
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remote</title>
    <link rel="apple-touch-icon" href="/images/mic.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="css/compiled/app.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <style type="text/css">
      body { background: #47454b; }
    </style>
  </head>

  <body ontouchstart="">
    <div id="container">

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
            <li class="active"><a href="#">Karaoke</a></li>
            <li><a href="/Receiver">Receiver</a></li>
            <li><a href="/TV">TV</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div style="width: 600px;">
      <div class="row">  
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/1">1</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/2">2</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/3">3</button>
      </div>

      <div class="row">  
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/4">4</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/5">5</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/6">6</button>
      </div>

      <div class="row">  
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/7">7</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/8">8</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/9">9</button>
      </div>

      <div class="row">  
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-info" href="/remotes/karaoke/KEY_PLAY">P</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/0">0</button>
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-info" href="/remotes/karaoke/KEY_PAUSE">||</button>
      </div>
      
      <p>

      <div class="row">
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/receiver/KEY_VOLUMEDOWN"><span class="glyphicon glyphicon-volume-down"></span></button>
        <button class="col-xs-2 col-md-2 col-md-offset-2 col-xs-offset-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/receiver/KEY_VOLUMEUP"><span class="glyphicon glyphicon-volume-up"></span></button>
      </div>
      
      <p>

      <div class="row">
        <button class="col-xs-2 col-md-2 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-large btn-default" href="/remotes/karaoke/KEY_AGAIN">USB</button>
      </div>
    </div>   




    <script src="js/compiled/app.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

  </body>
</html>
