COMMENT =		audio fingerprint extraction library

V =			1.6.2
DISTNAME =		chromaprint-$V

SHARED_LIBS =		chromaprint               3.1

CATEGORIES =		audio devel

HOMEPAGE =		https://acoustid.org/chromaprint
SITES =			https://github.com/acoustid/chromaprint/releases/download/v$V/

# MIT with LGPL2.1+ parts
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c m swresample

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib

LIB_DEPENDS =		graphics/ffmpeg

CONFIGURE_ARGS =	-DBUILD_TOOLS=ON \
			-DBUILD_TESTS=ON \
			-DFFT_LIB=avtx

# needs to come after internal copy of older gtest, which uses isystem
CXXFLAGS +=		-isystem ${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
