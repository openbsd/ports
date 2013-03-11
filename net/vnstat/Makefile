# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:58 espie Exp $

COMMENT =	network traffic monitor

DISTNAME =	vnstat-1.11
REVISION =	3
CATEGORIES =	net sysutils

HOMEPAGE =	http://humdi.net/vnstat/

MASTER_SITES = ${HOMEPAGE}

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c gd m

LIB_DEPENDS =	graphics/gd

USE_GMAKE =	Yes

NO_TEST =	Yes

INSTALL_TARGET = bsdinstall

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/vnstat.cgi ${PREFIX}/share/examples/vnstat/

.include <bsd.port.mk>
