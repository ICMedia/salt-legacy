#!/usr/bin/env python

activate_this = '/srv/www/icradio/www/venv/bin/activate_this.py'
execfile(activate_this, dict(__file__=activate_this))

import os
import sys

os.environ['DJANGO_SETTINGS_MODULE'] = 'icradioweb.settings'

sys.path.append('/srv/www/icradio/www/code/modules')
sys.path.append('/srv/www/icradio/www/code/modules/icradioweb/mainapp')

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()
