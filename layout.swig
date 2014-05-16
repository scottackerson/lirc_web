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

    {% block head % }
    <link rel="stylesheet" href="/css/compiled/app.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/add2home.css">

    <style type="text/css">
      body { background: #47454b; }
    </style>
    {% endblock %}
  </head>
 
  <body ontouchstart="">
    {% block navigation %}
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
    {% end block %}
    {% block content %}  

    {% endblock %}

    {% block script %}
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
    {% endblock %}
  </body>
</html>
