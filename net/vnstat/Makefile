# $OpenBSD: Makefile,v 1.29 2018/04/18 09:19:24 kn Exp $

COMMENT-main =		network traffic monitor
COMMENT-vnstati =	image output support for vnstat

V = 			1.18
DISTNAME =		vnstat-${V}
PKGNAME-main = 		${DISTNAME}
PKGNAME-vnstati = 	vnstati-${V}

CATEGORIES =	net sysutils

HOMEPAGE =	https://humdi.net/vnstat/

MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB 	= c m
WANTLIB-vnstati = ${WANTLIB} gd pthread

MULTI_PACKAGES = -main -vnstati

LIB_DEPENDS-vnstati = graphics/gd
RUN_DEPENDS-vnstati = net/vnstat
TEST_DEPENDS =	devel/check

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			--prefix=${PREFIX} \
			--mandir=${PREFIX}/man \
			--srcdir=${WRKSRC} \
			--enable-image-output

MAKE_FLAGS =	

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vnstat/
	${INSTALL_DATA} ${WRKSRC}/examples/vnstat.cgi \
		${PREFIX}/share/examples/vnstat/

.include <bsd.port.mk>
