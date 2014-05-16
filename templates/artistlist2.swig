{% extends 'layout.swig' %}
{% block content %}
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
{% endblock %}

{% block script %}
<script = type="text/javascript">

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
  $.getJSON('/apisonglist?artist_id='+artist_id, function(data){

  $.each(data,function(i, value){
      $("#song-results").append('<a href="#" id="getArtists" class="btn btn-primary btn-lg default" role="button" onClick="changeTrack('+value.track+')">'+value.title+'</a>');
      })
  });
}

function changeTrack(track_id){
  $.get('/songnumber/'+track_id, function(data){
    console.log('get successful');
  });
}

</script>
{% endblock %}
