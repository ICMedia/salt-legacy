/etc/nginx/sites-available/icradio-members.conf:
  file.managed:
    - source: salt://sites/icradio/members/conf/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - requires:
      - file: /srv/members/icradio/members/public_html
    - watch_in:
      - service: nginx

/etc/nginx/sites-enabled/icradio-members.conf:
  file.symlink:
    - target: /etc/nginx/sites-available/icradio-members.conf
    - requires:
      - file: /etc/nginx/sites-available/icradio-members.conf
    - watch_in:
      - service: nginx
