var carousel_sleep_timeout;
var carousel_awaken_timeout;
$(function(){
    $(".carousel").carousel({interval:10000}).click(function(ev){
        $(this).carousel("next");
        awaken();
    }).parents().filter(".coverflow-container").mouseenter(awaken).mouseleave(sleep);
    
    function awaken(ev){
        var $self = $(this);
        if(carousel_sleep_timeout){window.clearTimeout(carousel_sleep_timeout);}
        if(carousel_awaken_timeout){window.clearTimeout(carousel_awaken_timeout);}
                                   
        carousel_awaken_timeout = window.setTimeout(function(){
            $self.addClass("awake");
        }, 250);     
    }
    
    function sleep(){
        var $self = $(this);
        if(carousel_sleep_timeout){window.clearTimeout(carousel_sleep_timeout);}
        if(carousel_awaken_timeout){window.clearTimeout(carousel_awaken_timeout);}
        $self.removeClass("awake");
    }
});