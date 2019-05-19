# $OpenBSD: Makefile,v 1.14 2019/05/19 19:13:46 naddy Exp $

COMMENT =		c protocol buffers

V =			1.3.0
DISTNAME =		protobuf-c-$V

SHARED_LIBS =		protobuf-c 2.0	# 2.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protobuf-c/protobuf-c/wiki

MASTER_SITES=		https://github.com/protobuf-c/protobuf-c/releases/download/v$V/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m protobuf protoc pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc
CXXFLAGS +=		-std=gnu++11

LIB_DEPENDS =		devel/protobuf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_STYLE =	autoreconf

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =		Yes

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
