COMMENT =	Software-Defined Radio Digital Signal Processing library

V =		1.8.2
REVISION =	0
GH_ACCOUNT =	jgaeddert
GH_PROJECT =	liquid-dsp
GH_TAGNAME =	v${V}

HOMEPAGE =	https://liquidsdr.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  liquid                    0.1 # 0.0

CATEGORIES =	comms

LIB_DEPENDS =	math/fftw3,float

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c fftw3f m

MODULES =		devel/cmake

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

CONFIGURE_ARGS +=	-DENABLE_SIMD=OFF

# 100% tests passed, 0 tests failed out of 192

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
