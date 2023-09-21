COMMENT =		MessagePack implementation for C and C++

V =			5.0.0
DISTNAME =		msgpack-c-${V}
PKGNAME =		msgpack-${V}

SHARED_LIBS +=	msgpackc                  2.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		https://msgpack.org/
SITES =		https://github.com/msgpack/msgpack-c/releases/download/c-${V}/

# Boost license
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest>=1.11.0pl20220208
TEST_DEPENDS =		devel/gtest>=1.11.0pl20220208

# evertyhing except tests
ALL_TARGET =		msgpackc msgpackc-static

# build whatever is left (ca. 22 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
