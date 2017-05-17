# $OpenBSD: Makefile,v 1.14 2017/05/17 20:09:36 sthen Exp $

COMMENT =	C++ unit test framework

V=		1.8.0
GH_ACCOUNT=	google
GH_PROJECT=	googletest
GH_TAGNAME=	release-$V
PKGNAME =	gtest-$V
REVISION =	0

SHARED_LIBS +=	gmock		0.0   # .0.0
SHARED_LIBS +=	gmock_main	0.0   # .0.0
SHARED_LIBS +=	gtest		1.0   # .0.0
SHARED_LIBS +=	gtest_main	1.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

SEPARATE_BUILD =	Yes

WANTLIB =		m ${LIBCXX}

MODULES +=		devel/cmake
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-Dgtest_build_tests=ON

.include <bsd.port.mk>
