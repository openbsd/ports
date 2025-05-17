COMMENT =		library for estimating the musical key of digital audio

GH_ACCOUNT =		mixxxdj
GH_PROJECT =		libkeyfinder
GH_TAGNAME =		2.2.8

SHARED_LIBS =		keyfinder 0.0

CATEGORIES =		audio

MAINTAINER =		Raphael Graf <r@undefined.ch>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} fftw3 m

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/catch2

LIB_DEPENDS =		math/fftw3

.include <bsd.port.mk>
