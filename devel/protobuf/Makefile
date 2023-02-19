COMMENT =		c++ protocol buffers

CPPMAJOR =		3
PROTOBUF_VERSION =	21.12
V =			${CPPMAJOR}.${PROTOBUF_VERSION}
TAG =			v${PROTOBUF_VERSION:S/rc-/rc/}
DISTNAME =		protobuf-cpp-${V}
PKGNAME =		protobuf-${V:S/-//g}
REVISION =		0

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf-lite	19.0    # 32.12
SHARED_LIBS +=		protobuf	21.0    # 32.12
SHARED_LIBS +=		protoc		23.0    # 32.12

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protocolbuffers/protobuf/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		https://github.com/protocolbuffers/protobuf/releases/download/${TAG}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-Dprotobuf_BUILD_SHARED_LIBS=ON
CONFIGURE_ARGS +=	-Dprotobuf_BUILD_TESTS=OFF

.include <bsd.port.mk>
