# $OpenBSD: Makefile,v 1.4 2010/07/22 14:40:49 landry Exp $

COMMENT-main =		system metrics collection engine
COMMENT-mysql =		collectd mysql plugin
COMMENT-pgsql =		collectd postgresql plugin
COMMENT-rrdtool =	collectd rrdtool plugin
COMMENT-snmp =		collectd snmp plugin

V =			4.10.0
DISTNAME =		collectd-$V
PKGNAME-main =		collectd-$V
REVISION-main =		2
PKGNAME-mysql =		collectd-mysql-$V
REVISION-mysql =	1
PKGNAME-pgsql =		collectd-pgsql-$V
REVISION-pgsql =	1
PKGNAME-rrdtool =	collectd-rrdtool-$V
REVISION-rrdtool =	1
PKGNAME-snmp =		collectd-snmp-$V
REVISION-snmp =		1
CATEGORIES =		sysutils

HOMEPAGE =		http://www.collectd.org/
SHARED_LIBS +=		collectdclient 0.0
SHARED_ONLY =		Yes

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		converters/libiconv

MULTI_PACKAGES =	-main -mysql -pgsql -rrdtool -snmp

WANTLIB-mysql =		crypto m ssl z mysqlclient
LIB_DEPENDS-mysql =	::databases/mysql

WANTLIB-pgsql =		pq
LIB_DEPENDS-pgsql =	::databases/postgresql

WANTLIB-rrdtool =	art_lgpl_2 freetype m png z rrd_th
LIB_DEPENDS-rrdtool =	::net/rrdtool

WANTLIB-snmp =		crypto netsnmp
LIB_DEPENDS-snmp =	::net/net-snmp

LIB_DEPENDS +=	::net/curl \
		::textproc/libxml \
		::sysutils/libstatgrab \
		::security/libgcrypt \
		::devel/libtool,-ltdl

WANTLIB += c crypto gpg-error idn intl kvm curl xml2 ltdl
WANTLIB += m pcap pthread ssl xml2 z statgrab gcrypt

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_ARGS +=--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib \
		--with-librrd=${LOCALBASE} \
		--with-libstatgrab=${LOCALBASE} \
		--with-libnetsnmp=${LOCALBASE}/bin/net-snmp-config \
		--localstatedir=/var \
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
