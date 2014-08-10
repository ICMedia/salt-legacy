base:
  '*':
    - core.basic_packages
    - core.sudo
    - core.scm
    - core.timezone
    - core.motd

    - salt.minion

  'salt-master':
    - salt.master

  'icradio-firestar':
    - icecast2

  'galen':
    - postgres
    - nginx
    - mysql
    - mysql.client
    - php
    - php.fpm
    - php.mysql
    - php.mysqlnd
    - php.pgsql
    - php.suhosin
    - php.json
    - php.gd
    - php.curl
    - php.cli
    - php.adodb
