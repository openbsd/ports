# $OpenBSD: Makefile,v 1.22 2018/08/09 16:45:21 tb Exp $

COMMENT =		c++ protocol buffers

V =			3.6.1
DISTNAME =		protobuf-cpp-$V
PKGNAME =		protobuf-$V

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=		protobuf	3.0   # 11.0
SHARED_LIBS +=		protoc		3.0   # 11.0
SHARED_LIBS +=		protobuf-lite	3.0   # 11.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/google/protobuf/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		https://github.com/google/protobuf/releases/download/v$V/

TEST_DEPENDS =		devel/gtest

COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib

.include <bsd.port.mk>
