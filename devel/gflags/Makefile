# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:09 sthen Exp $

COMMENT =		c++ commandline flags processing library

GH_ACCOUNT =		gflags
GH_PROJECT =		gflags
GH_TAGNAME =		v2.2.1
REVISION =		0

SHARED_LIBS +=		gflags               1.0      # .0.0
SHARED_LIBS +=		gflags_nothreads     1.0      # .0.0

CATEGORIES =		devel

HOMEPAGE =		https://gflags.github.io/gflags/

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_STATIC_LIBS=ON \
			-DBUILD_TESTING=ON

.include <bsd.port.mk>
