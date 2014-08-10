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
