COMMENT =		YAML parser and emitter in C++

GH_ACCOUNT=		jbeder
GH_PROJECT=		yaml-cpp
GH_TAGNAME=		yaml-cpp-0.9.0
DISTNAME=		${GH_TAGNAME}

SHARED_LIBS =		yaml-cpp	6.0 # 0.5

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DYAML_BUILD_SHARED_LIBS=ON \
			-DYAML_CPP_BUILD_TOOLS=OFF \
			-DYAML_CPP_BUILD_TESTS=ON

# has a bundled copy, but uses system gtest if available
BUILD_DEPENDS =		devel/gtest

.include <bsd.port.mk>
