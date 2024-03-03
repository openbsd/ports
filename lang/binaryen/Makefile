COMMENT =	WebAssembly compiler and toolchain infrastructure library

GH_ACCOUNT =	WebAssembly
GH_PROJECT =	binaryen
GH_TAGNAME =	version_117

PKGNAME =	${DISTNAME:L:S/version_//}

CATEGORIES =	lang

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c gtest gtest_main m

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/gtest

CONFIGURE_ARGS = -DENABLE_WERROR=OFF

CXXFLAGS +=	-I${PREFIX}/include -L${PREFIX}/lib

do-test:
	${WRKBUILD}/bin/binaryen-unittests

.include <bsd.port.mk>
