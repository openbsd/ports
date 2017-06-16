# $OpenBSD: Makefile,v 1.5 2017/06/16 18:55:07 jasper Exp $

COMMENT =		MessagePack implementation for C and C++

V = 			2.1.3
DISTNAME =		msgpack-${V}
SHARED_LIBS +=	msgpackc                  1.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		http://msgpack.org/

# Boost license
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}

MODULES =		devel/cmake gcc4
MODGCC4_ARCHS =		arm
MODGCC4_LANGS =		c++

# Requires updated gtest, which breaks protobuf < 3
CONFIGURE_ARGS +=	-DMSGPACK_BUILD_TESTS=Off
NO_TEST =		Yes

.include <bsd.port.mk>
