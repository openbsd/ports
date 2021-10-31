# $OpenBSD: Makefile,v 1.25 2021/10/31 16:09:26 ajacoutot Exp $

# http://build-failures.rhaalovely.net//alpha/2017-11-19/devel/gtest.log
BROKEN-alpha =	googletest/test/gtest_unittest.cc:2730: error: unrecognizable insn:

COMMENT =	C++ unit test framework

V=		1.8.1
GH_ACCOUNT=	google
GH_PROJECT=	googletest
GH_TAGNAME=	release-$V
PKGNAME =	gtest-$V

SHARED_LIBS +=	gmock		0.1   # .0.0
SHARED_LIBS +=	gmock_main	0.1   # .0.0
SHARED_LIBS +=	gtest		1.1   # .0.0
SHARED_LIBS +=	gtest_main	1.1   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

# New BSD
PERMIT_PACKAGE =	Yes

SEPARATE_BUILD =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES +=		devel/cmake
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-Dgtest_build_tests=ON

.include <bsd.port.mk>
