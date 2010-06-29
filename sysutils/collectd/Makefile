# $OpenBSD: Makefile,v 1.3 2010/06/29 20:17:18 landry Exp $

COMMENT-main =		system metrics collection engine
COMMENT-mysql =		collectd mysql plugin
COMMENT-pgsql =		collectd postgresql plugin
COMMENT-rrdtool =	collectd rrdtool plugin
COMMENT-snmp =		collectd snmp plugin

V =			4.10.0
DISTNAME =		collectd-$V
PKGNAME-main =		collectd-$Vp1
PKGNAME-mysql =		collectd-mysql-$Vp0
PKGNAME-pgsql =		collectd-pgsql-$Vp0
PKGNAME-rrdtool =	collectd-rrdtool-$Vp0
PKGNAME-snmp=		collectd-snmp-$Vp0
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

WANTLIB-mysql =		crypto m ssl z
LIB_DEPENDS-mysql =	mysqlclient::databases/mysql

WANTLIB-pgsql =
LIB_DEPENDS-pgsql =	pq::databases/postgresql

WANTLIB-rrdtool =       art_lgpl_2 freetype m png z
LIB_DEPENDS-rrdtool =   rrd_th::net/rrdtool


WANTLIB-snmp =		crypto
LIB_DEPENDS-snmp =	netsnmp::net/net-snmp

LIB_DEPENDS +=	curl::net/curl \
		xml2::textproc/libxml \
		statgrab::sysutils/libstatgrab \
		gcrypt::security/libgcrypt \
		ltdl::devel/libtool,-ltdl

WANTLIB += c crypto gpg-error idn intl kvm
WANTLIB += m pcap pthread ssl xml2 z

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
