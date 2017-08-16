# $OpenBSD: Makefile,v 1.18 2017/08/16 17:27:39 visa Exp $

COMMENT =	C++ unit test framework

V=		1.8.0
GH_ACCOUNT=	google
GH_PROJECT=	googletest
GH_TAGNAME=	release-$V
PKGNAME =	gtest-$V
REVISION =	2

SHARED_LIBS +=	gmock		0.0   # .0.0
SHARED_LIBS +=	gmock_main	0.0   # .0.0
SHARED_LIBS +=	gtest		1.0   # .0.0
SHARED_LIBS +=	gtest_main	1.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

SEPARATE_BUILD =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

MODULES +=		devel/cmake
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-Dgtest_build_tests=ON

.include <bsd.port.mk>
