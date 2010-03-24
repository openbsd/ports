# $OpenBSD: Makefile,v 1.1.1.1 2010/03/24 19:03:37 landry Exp $

COMMENT =		c++ protocol buffers

DISTNAME =		protobuf-2.3.0

SHARED_LIBS +=		protobuf	0.0   # .4.0
SHARED_LIBS +=		protoc		0.0   # .4.0
SHARED_LIBS +=		protobuf-lite	0.0   # .4.0

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

REGRESS_DEPENDS =	::devel/gtest

SEPARATE_BUILD =	concurrent
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-zlib 

.include <bsd.port.mk>
