COMMENT =	video filter library for GPU-accelerated processing

DISTNAME =	movit-1.7.2

SHARED_LIBS +=  movit                     0.0 # 8.6

CATEGORIES =	multimedia

HOMEPAGE =	https://movit.sesse.net

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} epoxy fftw3 m

SITES =		https://movit.sesse.net/

COMPILER =	base-clang ports-gcc base-gcc

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	 	devel/sdl2 \
			math/eigen3

LIB_DEPENDS =	 	math/fftw3

.include <bsd.port.mk>
