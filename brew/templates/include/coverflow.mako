<div class="coverflow-container">
  %if coverflow_info is not UNDEFINED:
  <div class="tab-content content-area">
    %for k,v in coverflow_info.items():
    
    %endfor
    <span class="overlay">
      %for k,v in coverflow_info.items():
      
      <div class="coverflow-thickborder"></div> 
      <ul class="nav nav-tabs coverflow-tabs">
        <li class="active"><a href="#inspiring-art" data-toggle="tab">Art</a></li>
        <li><a href="#inspiring-beer" data-toggle="tab">Beer</a></li>
        <li><a href="#scrapbook" data-toggle="tab">Scrapbook</a></li>
        <div class="tabs-companion">stuff that inspires us -><div class="second-companion">(click images to advance)</div></div>
      </ul>
      %endfor
    </span>
  </div>
  %endif
    <div id="inspiring-art" class="unselectable carousel tab-pane active" data-interval="10000">
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="item active cf1"></div>
        <div class="item cf2"></div>
        <div class="item cf3"></div>
      </div>
    </div>

    <div id="inspiring-beer" class="unselectable carousel tab-pane">
      <!-- Carousel items -->
      <div class="carousel-inner">
      </div>
    </div>

    <div id="scrapbook" class="unselectable carousel tab-pane">
      <!-- Carousel items -->
      <div class="carousel-inner">
      </div>
    </div>
    </span>
  </div>
</div>
