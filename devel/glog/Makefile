# $OpenBSD: Makefile,v 1.16 2018/10/24 14:28:00 sthen Exp $

COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.3.5
REVISION =		1

SHARED_LIBS +=		glog 1.0 # 0.2.1

CATEGORIES =		devel

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} gflags m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/gflags

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
