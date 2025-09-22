COMMENT =		MessagePack implementation for C++

V =			7.0.0
DISTNAME =		msgpack-cxx-${V}
PKGNAME =		msgpack-cxx-${V}

CATEGORIES =		devel

HOMEPAGE =		https://msgpack.org/
SITES =		https://github.com/msgpack/msgpack-c/releases/download/cpp-${V}/

# Boost license
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost
RUN_DEPENDS =		devel/boost

.include <bsd.port.mk>
