/etc/salt/master:
  file:
    - managed
    - source: salt://salt/etc/salt/master
    - user: root
    - group: root
    - require:
      - pkg: salt-master 

salt-master:
  service:
    - names:
      - salt-master
    - running
    - require:
      - pkg: salt-master
    - watch:
      - file: /etc/salt/master
