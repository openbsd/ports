COMMENT =		multimedia platform inspired by HyperCard

DIST_TUPLE =		github JohnEarnest Decker v1.41 .
PKGNAME =		${DISTNAME:L}

CATEGORIES =		graphics

HOMEPAGE =		https://beyondloom.com/decker/

MAINTAINER =		Jag Talon <jag@aangat.lahat.computer>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		SDL2 SDL2_image c m

USE_GMAKE =		Yes

BUILD_DEPENDS =		editors/vim \
			shells/bash

LIB_DEPENDS =		devel/sdl2 \
			devel/sdl2-image

RUN_DEPENDS =		devel/xdg-utils

ALL_TARGET =		decker lilt docs

MAKE_FLAGS =		COMPILER="${CC}"

do-install:
.for bin in decker lilt
	${INSTALL_PROGRAM} ${WRKBUILD}/c/build/${bin} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/decker
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/decker
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/decker/images
	${INSTALL_DATA} ${WRKSRC}/docs/*.html ${PREFIX}/share/doc/decker
	${INSTALL_DATA} ${WRKSRC}/docs/images/* ${PREFIX}/share/doc/decker/images
	${INSTALL_DATA} ${WRKSRC}/examples/decks/* ${PREFIX}/share/examples/decker
	${INSTALL_DATA} ${WRKSRC}/examples/lilt/* ${PREFIX}/share/examples/decker

.include <bsd.port.mk>
