/srv/www/icradio/members:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group

/srv/www/icradio/members/public_html:
  file.symlink:
    - target: /srv/www/icradio/members/repo/html

include:
  - .repo
  - .nginx
  - .config
