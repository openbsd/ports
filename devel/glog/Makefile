# $OpenBSD: Makefile,v 1.20 2021/06/19 03:00:52 danj Exp $

COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.4.0
REVISION =		2

SHARED_LIBS +=		glog 2.0 # 0.2.1

CATEGORIES =		devel

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} gflags m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/gflags

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
