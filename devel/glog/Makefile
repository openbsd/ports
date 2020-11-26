# $OpenBSD: Makefile,v 1.18 2020/11/26 20:37:13 sthen Exp $

COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.4.0

SHARED_LIBS +=		glog 2.0 # 0.2.1

CATEGORIES =		devel

# New BSD
PERMIT_PACKAGE =	Yes

MAINTAINER= 		Ashton Fagg <ashton@fagg.id.au>

WANTLIB += ${COMPILER_LIBCXX} gflags m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/gflags

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
