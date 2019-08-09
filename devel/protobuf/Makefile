# $OpenBSD: Makefile,v 1.26 2019/08/09 06:01:21 tb Exp $

COMMENT =		c++ protocol buffers

V =			3.9.0
DISTNAME =		protobuf-cpp-$V
PKGNAME =		protobuf-$V
REVISION =		0

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf	4.0   # 20.0
SHARED_LIBS +=		protoc		4.0   # 20.0
SHARED_LIBS +=		protobuf-lite	4.0   # 20.0

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

.if ${MACHINE_ARCH} == aarch64
# XXX restrict to -O1 or less to avoid runtime crashes in protoc
# e.g. as seen while building dnsdist and mosh.
# https://marc.info/?l=openbsd-ports&m=156363469501634&w=2
CFLAGS := ${CFLAGS:S/-O2/-O1/}
.endif

.include <bsd.port.mk>

# avoid undefined reference to __atomic_fetch_add_8
.if ${CHOSEN_COMPILER} == "ports-gcc"
. if ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "hppa"
CONFIGURE_ENV +=	LIBS="-latomic"
WANTLIB +=		atomic
. endif
.endif
