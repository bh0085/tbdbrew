from pyramid.response import Response
from pyramid.view import view_config

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    MyModel,
    )


sb_stuff = {"id":"scrapbook",
                  "title":"Our Scrapbook",
                  "pictures":[
                    {"image_root":"Scrapbook",
                     "image_name":"thumbsup"},
                    ]}

inspiringbeers_stuff = {
    "id":"inspiringbeers",
    "title":"Beer",
    "pictures":[
        {"image_root":"inspiringbeer",
         "image_name":"DogfishHead"},
        {"image_root":"inspiringbeer",
         "image_name":"NiceCans"},
        ]
    }

inspiringart_stuff = {"id":"inspiring-art",
                  "title":"Art",
                  "pictures":[
                    {"image_root":"Inspiration",
                     "image_name":"Katscape"},
                    {"image_root":"Inspiration",
                     "image_name":"snake-charmer-1870"},
                    {"image_root":"Inspiration",
                     "image_name":"IsItArt",
                     "image_position":"50% 60%"},
                    {"image_root":"Inspiration",
                     "image_name":"HowsItCome",
                     "image_position":"100% 90%"},
                    {"image_root":"Inspiration",
                     "image_name":"Kujo"},
                    {"image_root":"Inspiration",
                     "image_name":"BitchesBrew",
                     "image_position":"100% 100%"},
                    ]}

@view_config(route_name='main', renderer='main.mako')
def main_view(request):
    return {"coverflow_info":[inspiringart_stuff],
            "coverflow_underhtml":'''stuff that inspires us -><div class="second-companion">(click images to advance)</div>'''}


@view_config(route_name='about', renderer='about.mako')
def about_view(request):
    return {"coverflow_info":
                [sb_stuff,
                 {"id":"ourbeer",
                  "title":"Our Beer",
                  "pictures":[
                    {"image_root":"ourbeer",
                     "image_name":"newrig",
                     "image_position":"50% 20%"},
                    ]}
                 ],
            "coverflow_underhtml":'''photos -><div class="second-companion">(click images to advance)</div>'''}


@view_config(route_name='contact', renderer='contact.mako')
def contact_view(request):
    return {}

@view_config(route_name='beer', renderer='beer.mako')
def beer_view(request):
    return {"coverflow_info":[ inspiringart_stuff ],
            "coverflow_underhtml":'''photos -><div class="second-companion">(click images to advance)</div>'''}

@view_config(route_name="science", renderer = "science.mako")
def science_view(request):
   return {"coverflow_info":[inspiringart_stuff],
            "coverflow_underhtml":'''photos -><div class="second-companion">(click images to advance)</div>'''}

@view_config(route_name="science", renderer = "science.mako")
def science_view(request):
   return {"coverflow_info":[inspiringart_stuff ],
            "coverflow_underhtml":'''photos -><div class="second-companion">(click images to advance)</div>'''}

@view_config(route_name="coolship", renderer = "coolship.mako")
def coolship_view(request):
   return {"coverflow_info":[inspiringart_stuff ],
            "coverflow_underhtml":'''photos -><div class="second-companion">(click images to advance)</div>'''}


@view_config(route_name="show", renderer = "show.mako")
def show_view(request):
    return {"coverflow_info":[inspiringart_stuff],
            "coverflow_underhtml":'''photos -><div class="second-companion">(click images to advance)</div>'''}





@view_config(route_name="financial", renderer="financial.mako")
def financial_view(request):
    return {}
