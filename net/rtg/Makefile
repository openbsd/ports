COMMENT =		SNMP statistics monitoring system

DISTNAME =		rtg-0.7.5
CATEGORIES =		net
SITES =			ftp://ftpmirror.uk/freebsd-ports/rtg/

HOMEPAGE =		http://rtg.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto gd m netsnmp pthread mariadb

LIB_DEPENDS =		net/net-snmp \
			databases/mariadb \
			graphics/gd

CONFIGURE_ARGS+=	--with-gd=${LOCALBASE} \
			--with-mysql=${LOCALBASE} \
			--with-snmp=${LOCALBASE}
CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} \
			LDFLAGS=-L${X11BASE}/lib
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
