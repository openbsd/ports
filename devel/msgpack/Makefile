# $OpenBSD: Makefile,v 1.10 2019/05/05 17:09:38 jca Exp $

COMMENT =		MessagePack implementation for C and C++

V =			2.1.5
DISTNAME =		msgpack-${V}
SHARED_LIBS +=	msgpackc                  1.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		https://msgpack.org/

# Boost license
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest
TEST_DEPENDS =		devel/gtest

pre-configure:
	cd ${WRKSRC} && sed -i 's,-Werror -g -O3,,' CMakeLists.txt \
		example/c/CMakeLists.txt \
		example/cpp03/CMakeLists.txt \
		test/CMakeLists.txt

.include <bsd.port.mk>
