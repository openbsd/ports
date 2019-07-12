# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:51 sthen Exp $

COMMENT-main =		network traffic monitor
COMMENT-vnstati =	image output support for vnstat

V = 			1.14
EPOCH =			0
DISTNAME =		vnstat-${V}
PKGNAME-main = 		${DISTNAME}
PKGNAME-vnstati = 	vnstati-${V}
REVISION-main =         0

CATEGORIES =	net sysutils

HOMEPAGE =	http://humdi.net/vnstat/

MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB 	= c m
WANTLIB-vnstati = ${WANTLIB} gd pthread

MULTI_PACKAGES = -main -vnstati

LIB_DEPENDS-vnstati = graphics/gd
RUN_DEPENDS-vnstati = net/vnstat

USE_GMAKE =	Yes

NO_TEST =	Yes

INSTALL_TARGET = bsdinstall

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/vnstat.cgi ${PREFIX}/share/examples/vnstat/

.include <bsd.port.mk>
