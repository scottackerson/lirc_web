<!DOCTYPE HTML> 
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Mic Night!</title>
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

    <div id="container">
      <div class="keypad">
    
        <div class="panel panel-primary">
          <div class="panel-heading">Song Number</div>
          <div class="panel-body">
            <form method="post" action="/songnumber/">
                <input type="text" pattern="\d*" name="songnumber" size="6">
                <input type="submit">
            </form>
          </div>  
        </div>

        <div class="btn-group btn-group-justified">
          <div class="btn-group">
            <button type="button" class="btn btn-default command-once" href="/remotes/karaoke/KEY_PAUSE">Play</button>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-default command-once" href="/remotes/karaoke/KEY_PAUSE">Pause</button>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-default command-once" href="/remotes/karaoke/KEY_PLAY">Stop</button>
          </div>
        </div>
        <p>
        <div class="btn-group btn-group-justified">
          <div class="btn-group">
            <button type="button" class="btn btn-default command-repeater" href="/remotes/receiver/KEY_VOLUMEDOWN"><span class="glyphicon glyphicon-volume-down"></span></button>
          </div>
          <div class="btn-group">  
            <button type="button" class="btn btn-default command-repeater" href="/remotes/receiver/KEY_VOLUMEUP"><span class="glyphicon glyphicon-volume-up"></span></button>
          </div>  
        </div>
        <p>
        <div class="btn-group btn-group-justified">
          <div class="btn-group">
            <button class="btn btn-default command-once" href="/remotes/karaoke/KEY_AGAIN">USB</button>
          </div> 
          <div class="btn-group">
            <button class="btn btn-default command-once" href="/remotes/karaoke/group">GUI Toggle</button>
          </div>  
        </div>
    </div>

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
