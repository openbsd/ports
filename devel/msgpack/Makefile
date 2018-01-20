# $OpenBSD: Makefile,v 1.8 2018/01/20 14:03:39 jsg Exp $

COMMENT =		MessagePack implementation for C and C++

V = 			2.1.4
DISTNAME =		msgpack-${V}
SHARED_LIBS +=	msgpackc                  1.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		http://msgpack.org/

# Boost license
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest
TEST_DEPENDS =		devel/gtest

.include <bsd.port.mk>
