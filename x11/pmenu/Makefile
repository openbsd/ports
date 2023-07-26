COMMENT =	contextual radial menu for X11

GH_ACCOUNT =	phillbush
GH_PROJECT =	pmenu
GH_TAGNAME =	v3.1.1

CATEGORIES =	x11

MAINTAINER =	Lucas de Sena <lucas@seninha.org>

# MIT
PERMIT_PACKAGE =Yes

WANTLIB +=	Imlib2 X11 Xext Xft Xinerama Xrender c fontconfig m

LIB_DEPENDS =	graphics/imlib2

DEBUG_PACKAGES =${BUILD_PACKAGES}

NO_TEST =	Yes

MAKE_FLAGS =	MANPREFIX=${PREFIX}/man \
		PREFIX=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pmenu
	${INSTALL_DATA} ${WRKSRC}/pmenu.sh ${PREFIX}/share/examples/pmenu/

.include <bsd.port.mk>
