<?php

// DOC_ROOT is occasionally defined with a / and sometimes without
// if we define it with we should be OK whatever happens
define('SITE_DOC_ROOT', '/srv/www/icradio/members/');

define('DB_HOST', '{{ salt['pillar.get']('icradio:members_db:host') }}');
define('DB_USER', '{{ salt['pillar.get']('icradio:members_db:user') }}');
define('DB_PASS', '{{ salt['pillar.get']('icradio:members_db:password') }}');
define('DB_DB', '{{ salt['pillar.get']('icradio:members_db:database') }}');

define('SUDB_HOST', '{{ salt['pillar.get']('icradio:sudb:host') }}');
define('SUDB_USER', '{{ salt['pillar.get']('icradio:sudb:user') }}');
define('SUDB_PASS', '{{ salt['pillar.get']('icradio:sudb:password') }}');
define('SUDB_DB', '{{ salt['pillar.get']('icradio:sudb:database') }}');

define('ICECAST_HOST_PORT', '{{ salt['pillar.get']('icradio:icecast:host') }}');
define('ICECAST_ADMIN_USER', '{{ salt['pillar.get']('icradio:icecast:admin:user') }}');
define('ICECAST_ADMIN_PASS', '{{ salt['pillar.get']('icradio:icecast:admin:password') }}');
