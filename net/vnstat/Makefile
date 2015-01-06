# $OpenBSD: Makefile,v 1.20 2015/01/06 13:19:35 jasper Exp $

COMMENT =	network traffic monitor

DISTNAME =	vnstat-1.12
REVISION =	0
CATEGORIES =	net sysutils

HOMEPAGE =	http://humdi.net/vnstat/

MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c gd m pthread

LIB_DEPENDS =	graphics/gd

USE_GMAKE =	Yes

NO_TEST =	Yes

INSTALL_TARGET = bsdinstall

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/vnstat.cgi ${PREFIX}/share/examples/vnstat/

.include <bsd.port.mk>
