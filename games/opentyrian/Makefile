V =			2.1.20221123
COMMENT =		port of the DOS shoot-em-up Tyrian
DISTNAME =		opentyrian-${V}
CATEGORIES =		games x11

GH_ACCOUNT =		opentyrian
GH_PROJECT =		opentyrian
GH_TAGNAME =		v${V}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_net c m

RUN_DEPENDS =		archivers/unzip \
			devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		devel/sdl2-net

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}" \
			gamesdir="${PREFIX}/share"

FAKE_FLAGS =		mandir="${PREFIX}/man"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =		Yes

.include <bsd.port.mk>
