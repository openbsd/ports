# $OpenBSD: Makefile,v 1.16 2017/04/10 11:45:26 sthen Exp $

COMMENT =		c++ protocol buffers

DISTNAME =		protobuf-2.4.1
REVISION =		3

SHARED_LIBS +=		protobuf	1.0   # 7.0
SHARED_LIBS +=		protoc		1.0   # 7.0
SHARED_LIBS +=		protobuf-lite	1.0   # 7.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/google/protobuf

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread ${LIBCXX} z

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=protobuf/}

TEST_DEPENDS =	devel/gtest

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib 

.include <bsd.port.mk>
