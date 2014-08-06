base:
  '*':
    - core.basic_packages
    - core.sudo
    - core.scm
    - core.timezone

    - salt.minion

  'salt-master*':
    - salt.master
