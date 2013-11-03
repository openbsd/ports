# $OpenBSD: Makefile,v 1.11 2013/11/03 07:52:02 ajacoutot Exp $

COMMENT =		c++ protocol buffers

DISTNAME =		protobuf-2.4.1
REVISION =		1

SHARED_LIBS +=		protobuf	1.0   # 7.0
SHARED_LIBS +=		protoc		1.0   # 7.0
SHARED_LIBS +=		protobuf-lite	1.0   # 7.0

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/protobuf/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread stdc++ z

MASTER_SITES =		https://protobuf.googlecode.com/files/

TEST_DEPENDS =	devel/gtest

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-zlib 

.include <bsd.port.mk>
