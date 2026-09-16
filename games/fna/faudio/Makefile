COMMENT =	XAudio reimplementation for open platforms
PKGNAME =	faudio-${V}

SHARED_LIBS =	FAudio		7.0

CATEGORIES +=	audio

# zlib
PERMIT_PACKAGE = Yes

WANTLIB +=	SDL3

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c
MODULES =	devel/cmake
LIB_DEPENDS =	devel/sdl3

USE_GMAKE =	Yes
CONFIGURE_ARGS += -DBUILD_TESTS=ON

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

WRKDIST =	${WRKDIR}/FNA/lib/FAudio

# XXX: test just hangs in test_simple_streaming() since 26.09
NO_TEST =	Yes
do-test:
	cd ${WRKBUILD} && ./faudio_tests

.include <bsd.port.mk>
