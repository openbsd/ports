# http://build-failures.rhaalovely.net//alpha/2017-11-19/devel/gtest.log
BROKEN-alpha =	googletest/test/gtest_unittest.cc:2730: error: unrecognizable insn:

COMMENT =	C++ unit test framework

GH_ACCOUNT=	google
GH_PROJECT=	googletest
GH_COMMIT=	06519cedc3159de8b36a504766ad6b7966555f10
DISTNAME=	gtest-1.11.0pl20220208

SHARED_LIBS +=	gmock		1.0   # .0.0
SHARED_LIBS +=	gmock_main	1.0   # .0.0
SHARED_LIBS +=	gtest		2.0   # .0.0
SHARED_LIBS +=	gtest_main	2.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

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

# c++ standard must be the same as in devel/abseil-cpp,
# otherwise the build of abseil tests will end with an error
# see https://github.com/abseil/abseil-cpp/issues/819
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17

.include <bsd.port.mk>
