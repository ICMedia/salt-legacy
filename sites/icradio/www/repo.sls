git@github.com:ICRadio/icr-mainsite.git:
  git.latest:
    - rev: master
    - target: /srv/www/icradio/www/repo
    - require:
      - file: /srv/www/icradio/www

/srv/www/icradio/www/venv:
  virtualenv.managed:
    - system_site_packages: False
    # until the requirements are in the repo...
    - requirements: salt://sites/icradio/www/conf/requirements.txt

/srv/www/icradio/www/code:
  file.symlink:
    - target: /srv/www/icradio/www/repo/web/code
    - require:
      - git: git@github.com:ICRadio/icr-mainsite.git
