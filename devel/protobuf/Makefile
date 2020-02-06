# $OpenBSD: Makefile,v 1.32 2020/02/06 14:46:16 tb Exp $

COMMENT =		c++ protocol buffers

V =			3.11.3
DISTNAME =		protobuf-cpp-$V
PKGNAME =		protobuf-$V

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf	6.0   # 22.3
SHARED_LIBS +=		protoc		6.0   # 22.3
SHARED_LIBS +=		protobuf-lite	6.0   # 22.3

CATEGORIES =		devel

HOMEPAGE =		https://github.com/google/protobuf/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		https://github.com/google/protobuf/releases/download/v$V/

COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib

.include <bsd.port.mk>

# avoid undefined reference to __atomic_fetch_add_8
.if ${CHOSEN_COMPILER} == "ports-gcc"
. if ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "hppa"
CONFIGURE_ENV +=	LIBS="-latomic"
WANTLIB +=		atomic
. endif
.endif
