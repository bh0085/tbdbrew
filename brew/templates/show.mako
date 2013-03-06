<%inherit file="base.mako"/>
<%block name="content_html">
<%include file="include/coverflow.mako"/>
<div class="content">
  <div class="header" style="padding-top:20px; width:100%; text-align:center;">
    <h1 class="page-header">This page is pretty empty!</h1>
    <h3>Perhaps you're looking for: </h3><h3 class="show-link-container"><a href=http://en.wikipedia.org/wiki/Flight_of_the_Conchords_(TV_series)>Flight of the Conchords</a></h3><h3>[<a onClick="randomShow()">random</a>]</h3> 
  </div>
  <div class="header">

  <div class="header" style="padding-top:20px; width:100%; text-align:center;">
    <h1 class="page-header">Or Check out our Video!</h1>
    <iframe src="http://player.vimeo.com/video/59803318" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/59803318">First Days of TBD Brewing LLC</a> from <a href="http://vimeo.com/user16506567">ben holmes</a> on <a href="http://vimeo.com">Vimeo</a>.</p>
</div>

<script type="text/javascript">
  shows=[
  ["Flight of the Conchords","http://en.wikipedia.org/wiki/Flight_of_the_Conchords"],
  ["Mythbusters","http://en.wikipedia.org/wiki/Mythbusters"],
  ["MTV Unplugged","http://en.wikipedia.org/wiki/Mtv_unplugged"],
  ["Curb Your Enthusiasm","http://en.wikipedia.org/wiki/Curb_your_enthusiasm"],
  ["Cosmos","http://en.wikipedia.org/wiki/Cosmos:_A_Personal_Voyage"],
  ["Bill Nye the Science Guy","http://en.wikipedia.org/wiki/Bill_Nye_the_Science_Guy"]]
  function randomShow(){
  var rnd = shows[Math.floor(shows.length * Math.random())]
  $(".show-link-container").empty().append($("<a>",{"href":rnd[1]}).text(rnd[0]))
  }
</script>
</%block>
