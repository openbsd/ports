COMMENT =		audio fingerprint extraction library

GH_ACCOUNT =		acoustid
GH_PROJECT =		chromaprint
GH_TAGNAME =		v1.5.1
REVISION =		0

SHARED_LIBS =		chromaprint               3.0 # 1.5.0

CATEGORIES =		audio devel

HOMEPAGE =		https://acoustid.org/chromaprint

# MIT with LGPL2.1+ parts
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c m swresample

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib

LIB_DEPENDS =		graphics/ffmpeg

CONFIGURE_ARGS =	-DBUILD_TOOLS=ON \
			-DBUILD_TESTS=ON

TEST_TARGET =		check

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

do-test:
	${WRKBUILD}/tests/all_tests

.include <bsd.port.mk>
