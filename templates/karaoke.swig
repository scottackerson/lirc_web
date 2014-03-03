<!DOCTYPE HTML> 
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Karaoke</title>
    <link rel="apple-touch-icon" href="/mic.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="css/flat-ui.css" />
    <link rel="stylesheet" href="css/compiled/app.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

  </head>
  <body ontouchstart="">
    <div id="container">
      <h1 id="titlebar">
        <a class="back hidden palette palette-peter-river" href="#"></a><img src="/images/left-arrow.png" height="40" width="40" />
        <span id="title" class="palette palette-peter-river" data-text="Karaoke">Karaoke</span>
      </h1>
    <br></br>  

    <div style="width: 200px;">
      <div class="row">  
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/1">1</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/2">2</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/3">3</button>
      </div>

      <div class="row">  
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/4">4</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/5">5</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/6">6</button>
      </div>

      <div class="row">  
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/7">7</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/8">8</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/9">9</button>
      </div>

      <div class="row">  
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/0">Play</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/0">0</button>
        <button class="col-md-1 {% if repeaters[remoteName][command] %}command-repeater{% else %}command-once{% endif %} btn btn-wide btn-large btn-info" href="/remotes/karaoke/0">||</button>
      </div>
    </div>      

    <script src="js/compiled/app.js" type="text/javascript" charset="utf-8"></script>
  </body>
</html>
