from pyramid.config import Configurator
from sqlalchemy import engine_from_config

from .models import (
    DBSession,
    Base,
    )


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.bind = engine
    config = Configurator(settings=settings)
    config.add_static_view('/css', 'static/css', cache_max_age=3600)
    config.add_static_view('/js', 'static/js', cache_max_age=3600)
    config.add_static_view('/img', 'static/img', cache_max_age=3600)
    config.add_static_view('/pages', 'static/pages', cache_max_age=3600)

    config.add_route('about', '/about')
    config.add_route('science', '/science')
    config.add_route('coolship', '/coolship')
    config.add_route('show', '/show')
    config.add_route('contact', '/contact')
    config.add_route('beer', '/beer')
    config.add_route('main', '/')
    config.add_route('financial', '/financial')
    config.scan()
    return config.make_wsgi_app()
