COMMENT =		c++ protocol buffers

CPPMAJOR =		3
PROTOBUF_VERSION =	21.12
V =			${CPPMAJOR}.${PROTOBUF_VERSION}
TAG =			v${PROTOBUF_VERSION:S/rc-/rc/}
DISTNAME =		protobuf-cpp-${V}
PKGNAME =		protobuf-${V:S/-//g}

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf-lite	18.0    # 32.12
SHARED_LIBS +=		protobuf	20.0    # 32.12
SHARED_LIBS +=		protoc		22.0    # 32.12

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protocolbuffers/protobuf/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		https://github.com/protocolbuffers/protobuf/releases/download/${TAG}/

COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib

.include <bsd.port.mk>

# avoid undefined reference to __atomic_fetch_add_8
.if ${CHOSEN_COMPILER} == "ports-gcc"
. if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ENV +=	LIBS="-latomic"
WANTLIB +=		atomic
. endif
.endif
