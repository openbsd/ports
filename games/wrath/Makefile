COMMENT =		client of wrath-darkplaces engine

DISTNAME =		wrath-1.1.2

GH_ACCOUNT =		Official3DRealms
GH_PROJECT =		wrath-darkplaces
GH_COMMIT =		f6862f628d6ddc133a9ef67bc4631b6137809772

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

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
