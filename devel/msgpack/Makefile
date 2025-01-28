COMMENT =		MessagePack implementation for C
# C++ is in msgpack-cxx which is in a different branch of the same repo
# separate releases are made from both branches

V =			6.0.0
DISTNAME =		msgpack-c-${V}
PKGNAME =		msgpack-${V}

REVISION =		0

SHARED_LIBS +=	msgpack-c                  0.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		https://msgpack.org/
SITES =		https://github.com/msgpack/msgpack-c/releases/download/c-${V}/

# Boost license
PERMIT_PACKAGE =	Yes

# C++ used in tests
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest>=1.11.0pl20220208
TEST_DEPENDS =		devel/gtest>=1.11.0pl20220208

# everything except tests
ALL_TARGET =		msgpack-c msgpack-c-static

# build whatever is left (ca. 22 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
