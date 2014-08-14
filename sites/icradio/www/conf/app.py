import os
import sys

os.environ['DJANGO_SETTINGS_MODULE'] = 'icradioweb.settings'

sys.path.append('/srv/www/icradio/www/repo/code/modules')
sys.path.append('/srv/www/icradio/www/repo/code/modules/icradioweb/mainapp')

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()
