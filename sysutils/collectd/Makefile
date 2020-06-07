# $OpenBSD: Makefile,v 1.62 2020/06/07 15:57:48 ajacoutot Exp $

COMMENT-main =		system metrics collection engine
COMMENT-mysql =		collectd mysql plugin
COMMENT-pgsql =		collectd postgresql plugin
COMMENT-rrdtool =	collectd rrdtool plugin
COMMENT-snmp =		collectd snmp plugin
COMMENT-virt =		collectd libvirt plugin
COMMENT-python =	collectd python plugin
COMMENT-memcachec =	collectd memcachec plugin
COMMENT-mqtt =		collectd mqtt plugin
COMMENT-nut =		collectd nut plugin
COMMENT-riemann =	collectd riemann plugin
COMMENT-redis =		collectd redis plugin
COMMENT-prometheus =	collectd prometheus plugin
COMMENT-ping =		collectd ping plugin

V =			5.8.1
DISTNAME =		collectd-$V
PKGNAME-main =		collectd-$V
PKGNAME-mysql =		collectd-mysql-$V
PKGNAME-pgsql =		collectd-pgsql-$V
PKGNAME-rrdtool =	collectd-rrdtool-$V
PKGNAME-snmp =		collectd-snmp-$V
PKGNAME-virt =		collectd-virt-$V
PKGNAME-python =	collectd-python-$V
PKGNAME-memcachec =	collectd-memcachec-$V
PKGNAME-mqtt =		collectd-mqtt-$V
PKGNAME-nut =		collectd-nut-$V
PKGNAME-riemann =	collectd-riemann-$V
PKGNAME-redis =		collectd-redis-$V
PKGNAME-prometheus =	collectd-prometheus-$V
PKGNAME-ping =		collectd-ping-$V
CATEGORIES =		sysutils
REVISION-main =		0
REVISION-memcachec =	0
REVISION-mqtt =		0
REVISION-mysql =	1
REVISION-nut =		0
REVISION-pgsql =	0
REVISION-ping =		0
REVISION-prometheus =	1
REVISION-python =	1
REVISION-redis =	0
REVISION-riemann =	1
REVISION-rrdtool =	1
REVISION-snmp =		0
REVISION-virt =		1

HOMEPAGE =		http://www.collectd.org/
SHARED_LIBS +=		collectdclient 1.0

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/files/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_RUNDEP =		No

MULTI_PACKAGES =	-main -mysql -pgsql -rrdtool -snmp -virt -python -memcachec -mqtt -nut -riemann -redis -prometheus -ping

WANTLIB-mysql =		mariadb pthread
LIB_DEPENDS-mysql =	databases/mariadb
RUN_DEPENDS-mysql =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-pgsql =		pq pthread
LIB_DEPENDS-pgsql =	databases/postgresql
RUN_DEPENDS-pgsql =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-rrdtool =	X11 Xext Xrender cairo expat fontconfig \
			freetype glib-2.0 gobject-2.0 \
			graphite2 harfbuzz iconv intl lzma m \
			pango-1.0 pangocairo-1.0 \
			pixman-1 png pthread rrd xcb \
			xcb-render xcb-shm xml2 z
LIB_DEPENDS-rrdtool =	net/rrdtool
RUN_DEPENDS-rrdtool =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-snmp =	net/net-snmp
WANTLIB-snmp =		crypto netsnmp pthread c kvm m netsnmpagent perl
RUN_DEPENDS-snmp =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-virt =	sysutils/libvirt
WANTLIB-virt =		dbus-1 ffi gmp gnutls hogweed gio-2.0 glib-2.0 gobject-2.0 \
			nettle p11-kit ssh2 tasn1 util virt crypto curl iconv \
			idn2 intl lzma m nghttp2 pthread ssl unistring xml2 z \
			sasl2
RUN_DEPENDS-virt =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-python =	${MODPY_LIB_DEPENDS}
WANTLIB-python =	${MODPY_WANTLIB} pthread m util iconv intl
RUN_DEPENDS-python =	collectd-$V:${BASE_PKGPATH},-main \
			${MODPY_RUN_DEPENDS}

LIB_DEPENDS-memcachec =	devel/libmemcached
WANTLIB-memcachec =	m memcached sasl2 pthread
RUN_DEPENDS-memcachec =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-nut =	nut->=2.7.3p0:sysutils/nut
RUN_DEPENDS-nut =	collectd-$V:${BASE_PKGPATH},-main
WANTLIB-nut =		crypto pthread ssl upsclient

LIB_DEPENDS-riemann =	sysutils/riemann-c-client
WANTLIB-riemann =	gmp gnutls ffi hogweed intl iconv idn2 nettle \
			protobuf-c p11-kit pthread riemann-client tasn1 \
			unistring
RUN_DEPENDS-riemann =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-mqtt =	net/mosquitto
RUN_DEPENDS-mqtt =	collectd-$V:${BASE_PKGPATH},-main
WANTLIB-mqtt =		mosquitto pthread

LIB_DEPENDS-prometheus =	www/libmicrohttpd \
				devel/protobuf-c
RUN_DEPENDS-prometheus =	collectd-$V:${BASE_PKGPATH},-main
WANTLIB-prometheus =	ffi gmp gnutls hogweed iconv idn2 intl microhttpd \
			nettle p11-kit protobuf-c pthread tasn1 unistring

LIB_DEPENDS-redis =	databases/libhiredis
RUN_DEPENDS-redis =	collectd-$V:${BASE_PKGPATH},-main
WANTLIB-redis =		hiredis pthread

LIB_DEPENDS-ping =	net/liboping
RUN_DEPENDS-ping =	collectd-$V:${BASE_PKGPATH},-main
WANTLIB-ping =		m oping pthread

LIB_DEPENDS +=	net/curl \
		textproc/libxml \
		sysutils/libstatgrab \
		security/libgcrypt \
		devel/libyajl

WANTLIB += c crypto gpg-error kvm curl xml2 lzma nghttp2
WANTLIB += m pcap pthread ssl xml2 z statgrab gcrypt iconv intl
WANTLIB += yajl

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
# uses -export-symbol-regex
USE_LIBTOOL=		gnu
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_ARGS +=--with-librrd=${LOCALBASE} \
		--with-libstatgrab=${LOCALBASE} \
		--with-libnetsnmp=${LOCALBASE} \
		--enable-all-plugins=no

# no, varnishapi.h not in our varnish package
#		--with-libvarnish=${LOCALBASE}

ENABLED_PLUGINS =	apache apcups ascent bind cpu csv curl curl_xml \
			df disk dns email exec filecount interface load \
			logfile match_empty_counter match_hashed match_regex \
			match_timediff match_value memcached memory mysql \
			network nginx ntpd olsrd openvpn ping postgresql powerdns \
			processes redis rrdtool rrdcached snmp snmp_agent swap syslog table tail tail_csv \
			target_notification target_replace target_scale \
			target_set target_v5upgrade tcpconns teamspeak2 ted unixsock uptime \
			users uuid write_http write_graphite pf python virt memcachec nut \
			aggregation curl_json log_logstash memcached mqtt \
			threshold write_log write_prometheus write_redis write_riemann

.for _plugin in ${ENABLED_PLUGINS}
CONFIGURE_ARGS += --enable-${_plugin}
.endfor

CONFIGURE_ENV +=	PYTHON_CONFIG='${LOCALBASE}/bin/python${MODPY_VERSION}-config' \
			CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread'

post-install:
	rm -f ${PREFIX}/lib/collectd/*.la

.include <bsd.port.mk>
