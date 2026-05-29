COMMENT =	Software-Defined Radio Digital Signal Processing library

V =		1.7.0
GH_ACCOUNT =	jgaeddert
GH_PROJECT =	liquid-dsp
GH_TAGNAME =	v${V}

HOMEPAGE =	https://liquidsdr.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  liquid                    0.0 # 0.0

CATEGORIES =	comms

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c m

MODULES =		devel/cmake

CFLAGS +=	-I${LOCALBASE}/include \
		-DM_PI=3.141592653589793238462643383279502884
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

CONFIGURE_ARGS +=	-DENABLE_SIMD=OFF

# test results:
# 1:  WARNINGS : 57
# 1: ==================================
# 1:  PASSED ALL 716451 CHECKS
# 1/1 Test #1: test .............................   Passed  106.46 sec

.include <bsd.port.mk>
