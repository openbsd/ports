COMMENT =		client of wrath-darkplaces engine

DISTNAME =		wrath-0.0.0.20210114

GH_ACCOUNT =		KillPixelGames
GH_PROJECT =		wrath-darkplaces
GH_COMMIT =		2e4c399f3b6428d313d408d84f9e3ac6355a857e

CATEGORIES =		games

MAINTAINER =		Paul Valencia <reivyr@enmadechi.com>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL2 X11 c jpeg m z

LIB_DEPENDS =		devel/sdl2 \
			graphics/jpeg

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS_LIBJPEG="-I${LOCALBASE}/include -DLINK_TO_LIBJPEG" \
			CPUOPTIMIZATIONS="${CFLAGS}"

.if !(${MACHINE_ARCH} == amd64 || ${MACHINE_ARCH} == i386)
MAKE_FLAGS +=		CFLAGS_SSE= CFLAGS_SSE2=
.endif

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		makefile

ALL_TARGET =		sdl2-release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/darkplaces-sdl ${PREFIX}/bin/wrath

.include <bsd.port.mk>
