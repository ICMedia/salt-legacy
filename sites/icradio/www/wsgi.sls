/srv/www/icradio/www/conf/supervisor.conf:
  file.managed:
    - source: salt://sites/icradio/www/conf/supervisor.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
        - pkg: supervisor

/etc/supervisor/conf.d/icradio-www.conf:
  file.symlink:
    - target: /srv/www/icradio/www/conf/supervisor.conf
    - require:
      - file: /srv/www/icradio/www/conf/supervisor.conf

icradio_www_gunicorn:
  supervisord:
    - running
    - require:
      - pkg: supervisor
      - git: git@github.com:ICRadio/icr-mainsite.git
      - file: /etc/supervisor/conf.d/icradio-www.conf
      - file: /srv/www/icradio/www/conf/gunicorn.py
      - file: /srv/www/icradio/www/code
      - virtualenv: /srv/www/icradio/www/venv
    - watch:
      - file: /etc/nginx/sites-enabled/icradio-www.conf 
      - file: /etc/supervisor/conf.d/icradio-www.conf
      - file: /srv/www/icradio/www/conf/gunicorn.py
      - virtualenv: /srv/www/icradio/www/venv
      - git: git@github.com:ICRadio/icr-mainsite.git
