# $OpenBSD: Makefile,v 1.13 2017/04/23 11:14:47 sthen Exp $

COMMENT =	C++ unit test framework

V=		1.8.0
GH_ACCOUNT=	google
GH_PROJECT=	googletest
GH_TAGNAME=	release-$V
PKGNAME =	gtest-$V

SHARED_LIBS +=	gmock		0.0   # .0.0
SHARED_LIBS +=	gmock_main	0.0   # .0.0
SHARED_LIBS +=	gtest		1.0   # .0.0
SHARED_LIBS +=	gtest_main	1.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

MAINTAINER =	Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

SEPARATE_BUILD =	Yes

WANTLIB =		m ${LIBCXX}

MODULES +=		devel/cmake
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

.include <bsd.port.mk>
