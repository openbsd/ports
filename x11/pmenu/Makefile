# $OpenBSD: Makefile,v 1.1.1.1 2021/03/04 22:46:21 solene Exp $

COMMENT =	contextual radial menu for X11

GH_ACCOUNT =	phillbush
GH_PROJECT =	pmenu
GH_TAGNAME =	v2.2.0

CATEGORIES =	x11

MAINTAINER =	Jerome Kasper <neon.king.fr@gmail.com>

HOMEPAGE =	https://github.com/phillbush/pmenu

# MIT
PERMIT_PACKAGE =Yes

WANTLIB += Imlib2 X11 Xext Xft Xinerama Xrender c fontconfig m

LIB_DEPENDS =	graphics/imlib2

DEBUG_PACKAGES =${BUILD_PACKAGES}

NO_TEST =	Yes

MAKE_FLAGS =	FREETYPEINC=${X11BASE}/include/freetype2 \
		MANPREFIX=${PREFIX}/man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pmenu
	${INSTALL_DATA} ${WRKSRC}/pmenu.sh ${PREFIX}/share/examples/pmenu/

.include <bsd.port.mk>
