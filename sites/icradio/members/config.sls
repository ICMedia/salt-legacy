/srv/www/icradio/members/public_html/config.inc.php:
  file.managed:
    - source: salt://sites/icradio/members/conf/config.inc.php
    - user: www-data
    - group: www-data
    - mode: 400
    - template: jinja
    - requires:
      - file: /srv/www/icradio/members/public_html

/srv/www/icradio/members/public_html/members/wiki/LocalSettings.php:
  file.managed:
    - source: salt://sites/icradio/members/conf/LocalSettings.php
    - user: www-data
    - group: www-data
    - mode: 400
    - template: jinja
    - requires:
      - file: /srv/www/icradio/members/public_html
