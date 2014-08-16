base:
  '*':
    - core.basic_packages
    - core.sudo
    - core.scm
    - core.timezone
    - core.motd

    - salt.repo
    - salt.minion

  'salt-master':
    - salt.master

  'icradio-firestar':
    - icecast2

  'galen':
    - core.supervisor
    - core.py_dev_packages
    - postgres
    - nginx
    - ssl
    - ssl.certs
    - mysql
    - mysql.client
    - php
    - php.fpm
    - php.mysqlnd
    - php.pgsql
    - php.gd
    - php.curl
    - php.cli
    - php.adodb
    - sites.icradio.members
    - sites.icradio.www
