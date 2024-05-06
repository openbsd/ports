COMMENT =	C++ unit test framework

V=		1.14.0
GH_ACCOUNT=	google
GH_PROJECT=	googletest
GH_TAGNAME=	v${V}
DISTNAME=	gtest-${V}
REVISION=	1

SHARED_LIBS +=	gmock		2.0   # .0.0
SHARED_LIBS +=	gmock_main	1.0   # .0.0
SHARED_LIBS +=	gtest		3.0   # .0.0
SHARED_LIBS +=	gtest_main	2.0   # .0.0

CATEGORIES =	devel

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-Dgtest_build_tests=ON

# everything except tests
ALL_TARGET =		gmock gmock_main gtest gtest_main

# build whatever is left (ca. 102 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
