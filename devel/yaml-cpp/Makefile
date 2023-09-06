COMMENT =		YAML parser and emitter in C++

GH_ACCOUNT=		jbeder
GH_PROJECT=		yaml-cpp
GH_TAGNAME=		0.8.0

SHARED_LIBS =		yaml-cpp	5.0 # 0.5

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DYAML_BUILD_SHARED_LIBS=ON \
			-DYAML_CPP_BUILD_TOOLS=OFF \
			-DYAML_CPP_BUILD_TESTS=OFF

.include <bsd.port.mk>
