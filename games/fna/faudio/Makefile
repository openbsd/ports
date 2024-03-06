COMMENT =	XAudio reimplementation for open platforms
PKGNAME =	faudio-${V}

SHARED_LIBS =	FAudio		4.2	# 24.03

CATEGORIES +=	audio

# zlib
PERMIT_PACKAGE = Yes

WANTLIB +=	SDL2

COMPILER =	base-clang ports-gcc
MODULES =	devel/cmake
LIB_DEPENDS =	devel/sdl2

USE_GMAKE =	Yes
CONFIGURE_ARGS += -DBUILD_TESTS=ON

WRKDIST =	${WRKDIR}/FNA/lib/FAudio

do-test:
	cd ${WRKBUILD} && ./faudio_tests

.include <bsd.port.mk>
