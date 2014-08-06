timezone:
  pkg.installed:
    - name: tzdata

  file.managed:
    - name: /etc/timezone
    - template: jinja
    - contents: Europe/London
    - requires:
      - pkg: timezone

  cmd.wait:
    - name: ln -s /usr/share/zoneinfo/$(cat /etc/timezone) /etc/localtime
    - watch:
      - file: /etc/timezone
