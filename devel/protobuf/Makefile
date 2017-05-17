# $OpenBSD: Makefile,v 1.17 2017/05/17 20:23:45 sthen Exp $

COMMENT =		c++ protocol buffers

V =			2.4.1
DISTNAME =		protobuf-$V
REVISION =		5

SHARED_LIBS +=		protobuf	1.0   # 7.0
SHARED_LIBS +=		protoc		1.0   # 7.0
SHARED_LIBS +=		protobuf-lite	1.0   # 7.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/google/protobuf/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread ${LIBCXX} z

MASTER_SITES =		https://github.com/google/protobuf/releases/download/v$V/

TEST_DEPENDS =	devel/gtest

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib 

.include <bsd.port.mk>
