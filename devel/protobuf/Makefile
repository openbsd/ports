# $OpenBSD: Makefile,v 1.8 2013/07/05 21:43:06 espie Exp $

COMMENT =		c++ protocol buffers
NOT_FOR_ARCHS =		${GCC2_ARCHS}

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
