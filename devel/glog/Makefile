# $OpenBSD: Makefile,v 1.5 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT =		C++ application-level logging library

DISTNAME =		glog-0.3.1

SHARED_LIBS +=		glog 0.0 # 0.2.1

CATEGORIES =		devel

HOMEPAGE =		http://google-glog.googlecode.com/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += gflags m pthread stdc++

MASTER_SITES =		${HOMEPAGE}/files/

LIB_DEPENDS =		devel/gflags
TEST_DEPENDS =	devel/gtest
BUILD_DEPENDS +=	${TEST_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-gflags=${LOCALBASE}
MAKE_FLAGS =            docdir='$$(prefix)/share/doc/glog'

.include <bsd.port.mk>
