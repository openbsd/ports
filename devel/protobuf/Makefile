# $OpenBSD: Makefile,v 1.39 2021/04/30 17:09:51 tb Exp $

COMMENT =		c++ protocol buffers

V =			3.15.8
DISTNAME =		protobuf-cpp-$V
PKGNAME =		protobuf-$V

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf-lite	9.0    # 26.8
SHARED_LIBS +=		protobuf	9.0    # 26.8
SHARED_LIBS +=		protoc		10.0   # 26.8

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protocolbuffers/protobuf/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		https://github.com/protocolbuffers/protobuf/releases/download/v$V/

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
