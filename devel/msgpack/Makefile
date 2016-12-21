# $OpenBSD: Makefile,v 1.1.1.1 2016/12/21 19:17:14 jasper Exp $

COMMENT =		MessagePack implementation for C and C++

V = 			2.0.0
DISTNAME =		msgpack-${V}
SHARED_LIBS +=	msgpackc                  0.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		http://msgpack.org/

# Boost license
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}

MODULES =		devel/cmake

# Requires updated gtest, which breaks protobuf < 3
CONFIGURE_ARGS +=	-DMSGPACK_BUILD_TESTS=Off
NO_TEST =		Yes

.include <bsd.port.mk>
