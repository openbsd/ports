# if you are interested in fixing this, see FreeBSD ports - I will probably
# remove it if there's no interest. -sthen
BROKEN =	needs patches for -fno-common, newer PHP, newer perl

COMMENT =		SNMP statistics monitoring system

DISTNAME =		rtg-0.7.4
REVISION =		14
CATEGORIES =		net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rtg/}

HOMEPAGE =		http://rtg.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto fontconfig freetype gd iconv jpeg m mysqlclient_r
WANTLIB += netsnmp png pthread tiff webp z

LIB_DEPENDS =		converters/libiconv \
			net/net-snmp \
			databases/mariadb \
			graphics/gd \
			graphics/jpeg \
			graphics/png

CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} \
			LDFLAGS=-L${X11BASE}/lib
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59

.include <bsd.port.mk>
