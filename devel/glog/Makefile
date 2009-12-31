# $OpenBSD: Makefile,v 1.1.1.1 2009/12/31 15:48:59 landry Exp $

COMMENT =		C++ application-level logging library

DISTNAME =		glog-0.3.0

SHARED_LIBS +=		glog 0.0 # 0.2.1

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/google-glog/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += pthread

MASTER_SITES =		http://google-glog.googlecode.com/files/

LIB_DEPENDS =		gflags::devel/gflags
REGRESS_DEPENDS =	::devel/gtest
BUILD_DEPENDS +=	${REGRESS_DEPENDS}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-gflags=${LOCALBASE}
MAKE_FLAGS =            docdir='$$(prefix)/share/doc/glog'

.include <bsd.port.mk>
