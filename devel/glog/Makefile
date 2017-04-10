# $OpenBSD: Makefile,v 1.9 2017/04/10 11:45:25 sthen Exp $

COMMENT =		C++ application-level logging library

DISTNAME =		glog-0.3.1
REVISION =		1

SHARED_LIBS +=		glog 0.0 # 0.2.1

CATEGORIES =		devel

HOMEPAGE =		https://google-glog.googlecode.com/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += gflags m pthread ${LIBCXX}

MASTER_SITES =		${HOMEPAGE}/files/

LIB_DEPENDS =		devel/gflags
TEST_DEPENDS =	devel/gtest
BUILD_DEPENDS +=	${TEST_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-gflags=${LOCALBASE}
MAKE_FLAGS =            docdir='$$(prefix)/share/doc/glog'

.include <bsd.port.mk>
