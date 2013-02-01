var beers=[{
    info:{name:"blonde"},
    costs:{
            perbarrel:300*.25},
    revs:{
            ofs_draft_pour:6,
            ons_draft_pour:5,
            ofs_can:2,
            ons_can:2
        },
        times:{
            glyc_ferment:7,
            glyc_aging:7,
            bright:2
        }
    },{
    info:{name:"gingerIPA"},
    costs:{
            perbarrel:300*.5},
    revs:{
            ofs_draft_pour:6,
            ons_draft_pour:5,
            ofs_can:2,
            ons_can:2
        },
        times:{
            glyc_ferment:7,
            glyc_aging:7,
            bright:2
        }
    },{
    info:{name:"belgian"},
    costs:{
            perbarrel:300*.75},
    revs:{
            ofs_draft_pour:6,
            ons_draft_pour:5,
            ofs_can:2,
            ons_can:2
        },
        times:{
            glyc_ferment:7,
            glyc_aging:7,
            bright:2
        }
    }];

_.each(beers,function(e,i){
    e.costs.pergallon = e.costs.perbarrel/30;
    e.costs.perpint = e.costs.perbarrel/240;
    e.costs.percan = e.costs.perbarrel/300;
});

var schedule={
    perweek:2,
    distribution:{
        cheapo:1,
        belgian:.5,
        gingerIPA:.5
    }
}


$(
    function(){
        _.each(beers,function(e,i){
            $(".beers-dropdown").append($("<li>")
                                        .append($("<a>",{href:"#"+e.info.name,
                                                         "class":"beer-toggle"})
                                                .text(e.info.name)));
            
            $(".beers-tab-content")
                .append($("<div>",
                          {id:e.info.name,
                           "class":"tab-pane"+(i==0?" active":" ")})
                .html(Mustache.render($("#beer-financials-tab-content").html(),e)));
             
        });
        $(".beers-dropdown").dropdown();
        $(".beer-toggle").click(function(){$(this).tab("show");});
    }
)