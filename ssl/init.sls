/etc/ssl/my:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

/etc/ssl/my/certs:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - recurse:
      - user
      - group
      - mode
    - requires:
      - file: /etc/ssl/my

/etc/ssl/my/private:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 700
    - file_mode: 600
    - recurse:
      - user
      - group
      - mode
    - requires:
      - file: /etc/ssl/my
