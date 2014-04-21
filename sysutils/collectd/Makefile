# $OpenBSD: Makefile,v 1.22 2014/04/21 13:33:08 ajacoutot Exp $

COMMENT-main =		system metrics collection engine
COMMENT-mysql =		collectd mysql plugin
COMMENT-pgsql =		collectd postgresql plugin
COMMENT-rrdtool =	collectd rrdtool plugin
COMMENT-snmp =		collectd snmp plugin

V =			4.10.2
DISTNAME =		collectd-$V
PKGNAME-main =		collectd-$V
PKGNAME-mysql =		collectd-mysql-$V
PKGNAME-pgsql =		collectd-pgsql-$V
PKGNAME-rrdtool =	collectd-rrdtool-$V
PKGNAME-snmp =		collectd-snmp-$V
CATEGORIES =		sysutils

REVISION-main=		4
REVISION-mysql =	3
REVISION-pgsql =	3
REVISION-rrdtool =	2
REVISION-snmp =		1

HOMEPAGE =		http://www.collectd.org/
SHARED_LIBS +=		collectdclient 0.0
SHARED_ONLY =		Yes

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		devel/gettext

MULTI_PACKAGES =	-main -mysql -pgsql -rrdtool -snmp

WANTLIB-mysql =		crypto m ssl z mysqlclient pthread
LIB_DEPENDS-mysql =	databases/mysql
RUN_DEPENDS-mysql =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-pgsql =		pq pthread crypto ssl
LIB_DEPENDS-pgsql =	databases/postgresql
RUN_DEPENDS-pgsql =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-rrdtool =	X11 Xext Xrender cairo expat ffi fontconfig \
			freetype glib-2.0 gmodule-2.0 gobject-2.0 \
			graphite2 gthread-2.0 harfbuzz iconv intl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
			pixman-1 png pthread pthread-stubs rrd_th xcb \
			xcb-render xcb-shm xml2 z
LIB_DEPENDS-rrdtool =	net/rrdtool
RUN_DEPENDS-rrdtool =	collectd-$V:${BASE_PKGPATH},-main

WANTLIB-snmp =		crypto netsnmp m pthread
LIB_DEPENDS-snmp =	net/net-snmp
RUN_DEPENDS-snmp =	collectd-$V:${BASE_PKGPATH},-main

LIB_DEPENDS +=	net/curl \
		textproc/libxml \
		sysutils/libstatgrab \
		security/libgcrypt \
		devel/libtool,-ltdl

WANTLIB += c crypto gpg-error idn kvm curl xml2 ltdl
WANTLIB += m pcap pthread ssl xml2 z statgrab gcrypt ${MODGETTEXT_WANTLIB}

CONFIGURE_STYLE =	gnu
LIBTOOL_FLAGS =	--tag=disable-static
USE_GROFF =	Yes
CONFIGURE_ARGS +=--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib \
		--with-librrd=${LOCALBASE} \
		--with-libstatgrab=${LOCALBASE} \
		--with-libnetsnmp=${LOCALBASE}/bin/net-snmp-config \
		--without-python \
		--enable-all-plugins=no

ENABLED_PLUGINS =	apache apcups ascent bind cpu csv curl curl_xml \
			df disk dns email exec filecount interface load \
			logfile match_empty_counter match_hashed match_regex \
			match_timediff match_value memcached memory mysql \
			network nginx ntpd olsrd openvpn postgresql powerdns \
			rrdtool snmp swap syslog table tail \
			target_notification target_replace target_scale \
			target_set tcpconns teamspeak2 ted unixsock uptime \
			users uuid write_http

.for _plugin in ${ENABLED_PLUGINS}
CONFIGURE_ARGS += --enable-${_plugin}
.endfor

CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread'

.include <bsd.port.mk>
