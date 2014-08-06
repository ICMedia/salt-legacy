/etc/sudoers.d/local:
  file:
    - managed
    - source: salt://basic/etc/sudoers.d/local
    - mode: 440
    - require:
      - pkg: sudo
