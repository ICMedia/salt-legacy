{% for cert_name, cert in salt['pillar.get']('ssl:certificates', {}).items() %}
/etc/ssl/my/certs/{{ cert_name }}.pem:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - contents_pillar: ssl:certificates:{{ cert_name }}:certificate
    - requires:
      - file: /etc/ssl/my/certs

/etc/ssl/my/private/{{ cert_name }}.key:
  file.managed:
    - user: root
    - group: root
    - mode: 600
    - contents_pillar: ssl:certificates:{{ cert_name }}:key
    - requires:
      - file: /etc/ssl/my/private
{% endfor %}
