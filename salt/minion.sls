/etc/salt/minion:
  file:
    - managed
    - source: salt://salt/etc/salt/minion
    - user: root
    - group: root
    - require:
      - pkg: salt-minion

salt-minion:
  service:
    - names:
      - salt-minion
    - running
    - require:
      - pkg: salt-minion
    - watch:
      - file: /etc/salt/minion
