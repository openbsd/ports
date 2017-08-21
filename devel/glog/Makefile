# $OpenBSD: Makefile,v 1.12 2017/08/21 19:27:59 jasper Exp $

COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.3.1
REVISION =		2

SHARED_LIBS +=		glog 0.0 # 0.2.1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/google/glog

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += gflags m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		devel/gflags
TEST_DEPENDS =	devel/gtest
BUILD_DEPENDS +=	${TEST_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-gflags=${LOCALBASE}
MAKE_FLAGS =            docdir='$$(prefix)/share/doc/glog'

.include <bsd.port.mk>
