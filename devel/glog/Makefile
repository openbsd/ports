# $OpenBSD: Makefile,v 1.19 2021/03/05 01:24:44 kmos Exp $

COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.4.0
REVISION =		1

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
