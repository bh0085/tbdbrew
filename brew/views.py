from pyramid.response import Response
from pyramid.view import view_config

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    MyModel,
    )


@view_config(route_name='main', renderer='main.mako')
def main_view(request):
    return {}


@view_config(route_name='about', renderer='about.mako')
def about_view(request):
    return {}


@view_config(route_name='contact', renderer='contact.mako')
def contact_view(request):
    return {}

