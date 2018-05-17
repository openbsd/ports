# $OpenBSD: Makefile,v 1.15 2018/05/17 09:45:58 espie Exp $

COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.3.5
REVISION =		0

SHARED_LIBS +=		glog 1.0 # 0.2.1

CATEGORIES =		devel

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} gflags m

MODULES =		devel/cmake

LIB_DEPENDS =		devel/gflags

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
