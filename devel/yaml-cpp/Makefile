COMMENT =		YAML parser and emitter in C++

V=			0.6.3
GH_ACCOUNT=		jbeder
GH_PROJECT=		yaml-cpp
GH_TAGNAME=		yaml-cpp-$V
DISTNAME =		yaml-cpp-$V

SHARED_LIBS =		yaml-cpp	3.0 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jbeder/yaml-cpp

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DYAML_BUILD_SHARED_LIBS=ON \
			-DYAML_CPP_BUILD_TOOLS=OFF \
			-DYAML_CPP_BUILD_TESTS=OFF

.include <bsd.port.mk>
