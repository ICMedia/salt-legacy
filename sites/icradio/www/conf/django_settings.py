# Django settings for icradioweb project.

DEBUG = False
TEMPLATE_DEBUG = DEBUG

ADMINS = (
    ('IT Manager', 'it@icradio.com')
)

MANAGERS = ADMINS
#For django 1.4
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': '{{ salt['pillar.get']('icradio:www_db:database') }}',                      # Or path to database file if using sqlite3.
        'USER': '{{ salt['pillar.get']('icradio:www_db:user') }}',                      # Not used with sqlite3.
        'PASSWORD': '{{ salt['pillar.get']('icradio:www_db:password') }}',                  # Not used with sqlite3.
        'HOST': '{{ salt['pillar.get']('icradio:www_db:host') }}',                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
    }
}

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'Europe/London'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-gb'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# Absolute path to the directory that holds media.
# Example: "/home/media/media.lawrence.com/"
MEDIA_ROOT = '/srv/www/icradio/www/public_html/media/'

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
MEDIA_URL = '/media/'

# Absolute path to the directory that holds static content.
STATIC_ROOT = '/srv/www/icradio/www/public_html/static/'

# URL that handles the media served from STATIC_ROOT.
STATIC_URL = '/static/'

# URL prefix for admin media -- CSS, JavaScript and images. Make sure to use a
# trailing slash.
# Examples: "http://foo.com/media/", "/media/".
ADMIN_MEDIA_PREFIX =  MEDIA_ROOT + "admin/"

# Make this unique, and don't share it with anybody.
SECRET_KEY = '{{ salt['pillar.get']('icradio:www:secret') }}'

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.app_directories.Loader',
    'django.template.loaders.filesystem.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
)


ROOT_URLCONF = 'icradioweb.urls'

TEMPLATE_DIRS = (
    # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    '/srv/www/icradio/www/code/templates',
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.messages',
    'django.contrib.sessions',
#    'django.contrib.sites',
    'django.contrib.admin',
    'django.contrib.humanize',
    'icradioweb.mainapp',
    'icradioweb.dashboard',
)

TIME_FORMAT = "H:i"
DATE_FORMAT = "l j F Y"
