{% set timezone="Europe/London" %}

timezone:
  pkg.installed:
    - name: tzdata

/etc/timezone:
  file.managed:
    - template: jinja
    - contents: {{ timezone }} 
    - requires:
      - pkg: timezone

/etc/localtime:
  file.symlink:
    - name: /etc/localtime
    - target: /usr/share/zoneinfo/{{ timezone }}
    - force: true
