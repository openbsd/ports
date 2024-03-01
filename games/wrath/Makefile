COMMENT =		client of wrath-darkplaces engine

DISTNAME =		wrath-1.0

GH_ACCOUNT =		Official3DRealms
GH_PROJECT =		wrath-darkplaces
GH_COMMIT =		d7a494fbe76f45a84d1df0c7360c0c4848042e45

CATEGORIES =		games

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
	${INSTALL_PROGRAM} ${WRKBUILD}/wrath-sdl ${PREFIX}/bin/wrath

.include <bsd.port.mk>
