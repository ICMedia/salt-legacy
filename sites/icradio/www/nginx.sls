/srv/www/icradio/www/conf/nginx.conf:
  file.managed:
    - source: salt://sites/icradio/www/conf/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - file: /srv/www/icradio/www/public_html
      - file: /srv/www/icradio/www/conf
    - watch_in:
      - service: nginx

/etc/nginx/sites-available/icradio-www.conf:
  file.symlink:
    - target: /srv/www/icradio/www/conf/nginx.conf
    - require:
      - file: /srv/www/icradio/www/conf/nginx.conf

/etc/nginx/sites-enabled/icradio-www.conf:
  file.symlink:
    - target: /etc/nginx/sites-available/icradio-www.conf
    - require:
      - file: /etc/nginx/sites-available/icradio-www.conf
    - watch_in:
      - service: nginx
