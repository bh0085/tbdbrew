<div class="coverflow-container tabbable awake">
  %if coverflow_info is not UNDEFINED:
  <div class="tab-content content-area">
    %for i,v in enumerate(coverflow_info):
    
    <div id="${v['id']}" class="unselectable carousel tab-pane ${'active' if i==0 else ''}" data-interval="10000">
      <div class="carousel-inner">
        %for i2,e2 in enumerate(v['pictures']):
        <div class="item ${'active' if i2==0 else ''}" style="background-image:url(/img/brew_images/${e2['image_root']}/${e2['image_name']}.jpg); ${'background-position:{0};'.format(e2['image_position']) if 'image_position' in e2 else ''}; background-size:100%;"></div>
        %endfor
      </div>    
    </div>    

    %endfor
    <span class="overlay">
      <div class="coverflow-thickborder"></div> 
      <ul class="nav nav-tabs coverflow-tabs marker-inverse">
        
        %for i,v in enumerate(coverflow_info):
        <li class="${'active' if i==0 else ''}"><a href="#${v['id']}" data-toggle="tab">${v["title"]}</a></li>
        %endfor
        <div class="tabs-companion">${coverflow_underhtml | n}</div>
      </ul>
    </span>
  </div>
%endif
</div>
