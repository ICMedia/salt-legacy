/srv/www/icradio/www/conf/gunicorn.py:
  file.managed:
    - source: salt://sites/icradio/www/conf/gunicorn.py
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - file: /srv/www/icradio/www/conf

/srv/www/icradio/www/conf/django_settings.py:
  file.managed:
    - source: salt://sites/icradio/www/conf/django_settings.py
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - file: /srv/www/icradio/www/conf

/srv/www/icradio/www/code/modules/icradioweb/settings.py:
  file.symlink:
    - target: /srv/www/icradio/www/conf/django_settings.py
    - require:
      - file: /srv/www/icradio/www/conf
      - file: /srv/www/icradio/www/code
