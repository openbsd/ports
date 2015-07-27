# $OpenBSD: Makefile,v 1.31 2015/07/27 14:53:38 landry Exp $

COMMENT-main =		system metrics collection engine
COMMENT-mysql =		collectd mysql plugin
COMMENT-pgsql =		collectd postgresql plugin
COMMENT-rrdtool =	collectd rrdtool plugin
COMMENT-snmp =		collectd snmp plugin
COMMENT-virt =		collectd libvirt plugin
COMMENT-python =	collectd python plugin
COMMENT-memcachec =	collectd memcachec plugin
COMMENT-nut =		collectd nut plugin

V =			5.5.0
REVISION-main =		0
DISTNAME =		collectd-$V
PKGNAME-main =		collectd-$V
PKGNAME-mysql =		collectd-mysql-$V
PKGNAME-pgsql =		collectd-pgsql-$V
PKGNAME-rrdtool =	collectd-rrdtool-$V
PKGNAME-snmp =		collectd-snmp-$V
PKGNAME-virt =		collectd-virt-$V
PKGNAME-python =	collectd-python-$V
PKGNAME-memcachec =	collectd-memcachec-$V
PKGNAME-nut =		collectd-nut-$V
CATEGORIES =		sysutils

HOMEPAGE =		http://www.collectd.org/
SHARED_LIBS +=		collectdclient 1.0
SHARED_ONLY =		Yes

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		devel/gettext lang/python
MODPY_RUNDEP =		No

MULTI_PACKAGES =	-main -mysql -pgsql -rrdtool -snmp -virt -python -memcachec -nut

WANTLIB-mysql =		crypto m ssl z mysqlclient_r stdc++ pthread
LIB_DEPENDS-mysql =	databases/mariadb
RUN_DEPENDS-mysql =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-pgsql =		pq pthread crypto ssl
LIB_DEPENDS-pgsql =	databases/postgresql
RUN_DEPENDS-pgsql =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-rrdtool =	X11 Xext Xrender cairo expat ffi fontconfig \
			freetype glib-2.0 gmodule-2.0 gobject-2.0 \
			graphite2 gthread-2.0 harfbuzz iconv intl lzma m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
			pixman-1 png pthread pthread-stubs rrd_th xcb \
			xcb-render xcb-shm xml2 z
LIB_DEPENDS-rrdtool =	net/rrdtool
RUN_DEPENDS-rrdtool =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-snmp =		crypto netsnmp m pthread
LIB_DEPENDS-snmp =	net/net-snmp
RUN_DEPENDS-snmp =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-virt =	sysutils/libvirt
WANTLIB-virt =		avahi-client avahi-common dbus-1 ffi gmp gnutls hogweed \
			nettle p11-kit ssh2 tasn1 util virt crypto curl iconv \
			idn intl lzma m pthread ssl xml2 z
RUN_DEPENDS-virt =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-python =	${MODPY_LIB_DEPENDS}
WANTLIB-python =	${MODPY_WANTLIB} util m pthread
RUN_DEPENDS-python =	collectd-$V:${BASE_PKGPATH},-main \
			${MODPY_RUN_DEPENDS}

LIB_DEPENDS-memcachec =	devel/libmemcached
WANTLIB-memcachec =	memcached sasl2 m pthread
RUN_DEPENDS-memcachec =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS-nut =	nut->=2.7.3p0:sysutils/nut
RUN_DEPENDS-nut =	collectd-$V:${BASE_PKGPATH},-main
WANTLIB-nut =		upsclient

LIB_DEPENDS +=	net/curl \
		net/liboping \
		textproc/libxml \
		sysutils/libstatgrab \
		security/libgcrypt \
		devel/libtool,-ltdl \
		devel/libyajl \
		devel/protobuf-c>=1.0.1

WANTLIB += c crypto gpg-error idn kvm curl xml2 ltdl lzma oping
WANTLIB += m pcap pthread ssl xml2 z statgrab gcrypt ${MODGETTEXT_WANTLIB}
WANTLIB += protobuf-c yajl

CONFIGURE_STYLE =	gnu
# uses -export-symbol-regex
USE_LIBTOOL=		gnu
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_ARGS +=--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib \
		--with-librrd=${LOCALBASE} \
		--with-libstatgrab=${LOCALBASE} \
		--with-libnetsnmp=${LOCALBASE}/bin/net-snmp-config \
		--with-python=${MODPY_BIN} \
		--enable-all-plugins=no

# no, varnishapi.h not in our varnish package
#		--with-libvarnish=${LOCALBASE}

ENABLED_PLUGINS =	apache apcups ascent bind cpu csv curl curl_xml \
			df disk dns email exec filecount interface load \
			logfile match_empty_counter match_hashed match_regex \
			match_timediff match_value memcached memory mysql \
			network nginx ntpd olsrd openvpn ping postgresql powerdns \
			processes rrdtool rrdcached snmp swap syslog table tail tail_csv \
			target_notification target_replace target_scale \
			target_set target_v5upgrade tcpconns teamspeak2 ted unixsock uptime \
			users uuid write_http write_graphite pf python virt memcachec nut \
			aggregation curl_json fhcount log_logstash memcached \
			threshold write_log write_riemann

.for _plugin in ${ENABLED_PLUGINS}
CONFIGURE_ARGS += --enable-${_plugin}
.endfor

CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread'

.include <bsd.port.mk>
