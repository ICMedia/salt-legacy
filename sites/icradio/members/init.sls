git@github.com:ICRadio/www.git:
  git.latest:
    - rev: testing
    - target: /srv/www/icradio/members.git

/srv/www/icradio/members:
  file.symlink:
    - target: /srv/www/icradio/members.git/www
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
    - watched_in:
      - service: nginx

/srv/www/icradio/members/config.inc.php:
  file.managed:
    - source: salt://sites/icradio/members/conf/config.inc.php
    - user: www-data
    - group: www-data
    - mode: 400
    - template: jinja
