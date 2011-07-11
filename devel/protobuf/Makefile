# $OpenBSD: Makefile,v 1.4 2011/07/11 05:25:31 dcoppa Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	c m pthread stdc++ z

MASTER_SITES =		http://protobuf.googlecode.com/files/

REGRESS_DEPENDS =	devel/gtest

SEPARATE_BUILD =	concurrent
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-zlib 

.include <bsd.port.mk>
