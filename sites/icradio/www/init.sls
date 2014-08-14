/srv/www/icradio/www:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group

/srv/www/icradio/www/public_html:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - file: /srv/www/icradio/www

/srv/www/icradio/www/public_html/media:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - file: /srv/www/icradio/www/public_html

/srv/www/icradio/www/public_html/static:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - file: /srv/www/icradio/www/public_html

/srv/www/icradio/www/conf:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
    - require:
      - file: /srv/www/icradio/www

/srv/www/icradio/www/logs:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
    - require:
      - file: /srv/www/icradio/www

include:
  - .repo
  - .nginx
  - .config
  - .wsgi
