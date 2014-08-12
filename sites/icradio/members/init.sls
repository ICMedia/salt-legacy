git@github.com:ICRadio/www.git:
  git.latest:
    - rev: testing
    - target: /srv/www/icradio/members.git

/srv/www/icradio/members:
  file.symlink:
    - target: /srv/www/icradio/members.git/html
    - requires:
      - git: git@github.com:ICRadio/www.git

/etc/nginx/sites-available/icradio-www.conf:
  file.managed:
    - source: salt://sites/icradio/members/conf/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - requires:
      - file: /srv/www/icradio/members
    - watch_in:
      - service: nginx

/etc/nginx/sites-enabled/icradio-www.conf:
  file.symlink:
    - target: /etc/nginx/sites-available/icradio-www.conf
    - requires:
      - file: /etc/nginx/sites-available/icradio-www.conf
    - watch_in:
      - service: nginx

/srv/www/icradio/members/config.inc.php:
  file.managed:
    - source: salt://sites/icradio/members/conf/config.inc.php
    - user: www-data
    - group: www-data
    - mode: 400
    - template: jinja

/srv/www/icradio/members/members/wiki/LocalSettings.php:
  file.managed:
    - source: salt://site/icradio/members/conf/LocalSettings.php
    - user: www-data
    - group: www-data
    - mode: 400
    - template: jinja
