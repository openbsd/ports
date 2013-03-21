# $OpenBSD: Makefile,v 1.7 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT =		c++ protocol buffers

DISTNAME =		protobuf-2.4.1

SHARED_LIBS +=		protobuf	1.0   # 7.0
SHARED_LIBS +=		protoc		1.0   # 7.0
SHARED_LIBS +=		protobuf-lite	1.0   # 7.0

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/protobuf/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread stdc++ z

MASTER_SITES =		http://protobuf.googlecode.com/files/

TEST_DEPENDS =	devel/gtest

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-zlib 

.include <bsd.port.mk>
