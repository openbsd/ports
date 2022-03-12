COMMENT =		c++ protocol buffers

V =			3.19.3
TAG =			v${V:S/rc-/rc/}
DISTNAME =		protobuf-cpp-$V
PKGNAME =		protobuf-${V:S/-//g}

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf-lite	13.0    # 30.3
SHARED_LIBS +=		protobuf	15.0    # 30.3
SHARED_LIBS +=		protoc		16.0    # 30.3

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
