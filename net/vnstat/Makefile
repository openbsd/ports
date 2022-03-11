COMMENT-main =		network traffic monitor
COMMENT-vnstati =	image output support for vnstat

V =			2.6
EPOCH =			0
DISTNAME =		vnstat-${V}
PKGNAME-main =		${DISTNAME}
PKGNAME-vnstati =	vnstati-${V}

CATEGORIES =	net sysutils

HOMEPAGE =	https://humdi.net/vnstat/

MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB = c sqlite3 m
WANTLIB-vnstati = ${WANTLIB} gd sqlite3

MULTI_PACKAGES = -main -vnstati

LIB_DEPENDS-main =	databases/sqlite3

LIB_DEPENDS-vnstati =	graphics/gd \
			databases/sqlite3

RUN_DEPENDS-vnstati = net/vnstat

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib  -L${X11BASE}/lib " \
			CFLAGS="-I${LOCALBASE}/include  -I${X11BASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vnstat/
	${INSTALL_DATA} ${WRKSRC}/examples/vnstat.cgi ${PREFIX}/share/examples/vnstat/
	${INSTALL_DATA} ${WRKSRC}/cfg/vnstat.conf ${PREFIX}/share/examples/vnstat/

.include <bsd.port.mk>
