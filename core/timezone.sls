{% set timezone="Europe/London" %}

timezone:
  pkg.installed:
    - name: tzdata

  file:
    - managed:
      - name: /etc/timezone
      - template: jinja
      - contents: {{ timezone }} 
      - requires:
        - pkg: timezone

    - symlink:
      - name: /etc/localtime
      - target: /usr/share/zoneinfo/{{ timezone }}
