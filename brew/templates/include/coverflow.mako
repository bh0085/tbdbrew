<div class="coverflow-container">
  <div class="tab-content content-area">
    <div id="inspiring-art" class="unselectable carousel tab-pane active" data-interval="10000">
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="item active cf1"></div>
        <div class="item cf2"></div>
        <div class="item cf3"></div>
      </div>
      <!-- Carousel nav -->
      <!--
          <span class="overlay controls">
            <a class="carousel-control left" href="#inspiring-art" data-slide="prev"><span>◀</span></a>
            <a class="carousel-control right" href="#inspiring-art" data-slide="next"><span>▶</span></a>
          </span>
          -->
    </div>

    <div id="inspiring-beer" class="unselectable carousel tab-pane">
      <!-- Carousel items -->
      <div class="carousel-inner">
      </div>
      <!-- Carousel nav -->
      <!--
      <span class="overlay controls">
        <a class="carousel-control left" href="#inspiring-beer" data-slide="prev"><span>◀</span></a>
        <a class="carousel-control right" href="#inspiring-beer" data-slide="next"><span>▶</span></a>
      </span>
      -->
    </div>

    <div id="scrapbook" class="unselectable carousel tab-pane">
      <!-- Carousel items -->
      <div class="carousel-inner">
      </div>
      <!-- Carousel nav -->
      <!--

          <span class="overlay controls">
            <a class="carousel-control left" href="#scrapbook" data-slide="prev"><span>◀</span></a>
            <a class="carousel-control right" href="#scrapbook" data-slide="next"><span>▶</span></a>
          </span>
          -->
    </div>
    <span class="overlay">
    <div class="coverflow-thickborder"></div> 
    <ul class="nav nav-tabs coverflow-tabs">
      <li class="active"><a href="#inspiring-art" data-toggle="tab">Art</a></li>
      <li><a href="#inspiring-beer" data-toggle="tab">Beer</a></li>
      <li><a href="#scrapbook" data-toggle="tab">Scrapbook</a></li>
      <div class="tabs-companion">stuff that inspires us --><div class="second-companion">(click to advance)</div></div>
    </ul>
    </span>
  </div>
</div>

<script type="text/javascript">
  var carousel_sleep_timeout
  $(".carousel").carousel({interval:10000}).click(function(ev){
  $(this).carousel("next");
  awaken();
  }).parents().filter(".coverflow-container").mousemove(awaken).mouseout(sleep);
  
  function awaken(ev){
  var $self = $(this)

  $self.addClass("awake")

  /*
  if(carousel_sleep_timeout){
  window.clearTimeout(carousel_sleep_timeout);
  } 
  carousel_sleep_timeout = window.setTimeout(function(){
  $self.removeClass("awake");
  carousel_sleep_timeout = null;
  },2000);
  */
  }
  

  function sleep(){
  var $self = $(this)
  if(carousel_sleep_timeout){
  window.clearTimeout(carousel_sleep_timeout);
  }
  $self.removeClass("awake");
  }

</script>
