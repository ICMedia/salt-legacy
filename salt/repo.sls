{% set os = salt['grains.get']('os') %}
{% set oscodename = salt['grains.get']('oscodename') %}

{% if os == 'Debian' %}
python-apt:
  pkg.latest

salt:
  pkgrepo.managed:
    - humanname: Salt
{% if salt['grains.get']('oscodename') == 'sid' %}
    - name: deb http://debian.saltstack.com/debian unstable main
{% else %}
    - name: deb http://debian.saltstack.com/debian {{ salt['grains.get']('oscodename') }}-saltstack main
{% endif %}
    - file: /etc/apt/sources.list.d/salt.list
    - key_url: http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key
    - require:
      - pkg: python-apt
{% endif %}
