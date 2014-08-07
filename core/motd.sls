/etc/motd:
  file.managed:
    - source:
      - salt://core/etc/motd.{{ grains['fqdn'] }}
      - salt://core/etc/motd
    - user: root
    - group: root
    - mode: 644
    - template: jinja
