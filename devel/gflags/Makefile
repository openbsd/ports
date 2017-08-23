# $OpenBSD: Makefile,v 1.16 2017/08/23 14:25:53 rsadowski Exp $

COMMENT =		c++ commandline flags processing library

GH_ACCOUNT =		gflags
GH_PROJECT =		gflags
GH_TAGNAME =		v2.2.1

SHARED_LIBS +=		gflags               1.0      # .0.0
SHARED_LIBS +=		gflags_nothreads     1.0      # .0.0

CATEGORIES =		devel

HOMEPAGE =		https://gflags.github.io/gflags/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_STATIC_LIBS=ON \
			-DBUILD_TESTING=ON

.include <bsd.port.mk>
