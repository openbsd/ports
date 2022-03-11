COMMENT =		MessagePack implementation for C and C++

V =			2.1.5
GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}
DISTNAME =		msgpack-${V}
REVISION =		0

SHARED_LIBS +=	msgpackc                  1.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		https://msgpack.org/

# Boost license
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest>=1.11.0pl20220208
TEST_DEPENDS =		devel/gtest>=1.11.0pl20220208

# match standard version with gtest
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17

pre-configure:
	cd ${WRKSRC} && sed -i 's,-Werror -g -O3,,' CMakeLists.txt \
		example/c/CMakeLists.txt \
		example/cpp03/CMakeLists.txt \
		test/CMakeLists.txt

.include <bsd.port.mk>
