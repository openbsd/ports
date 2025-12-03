COMMENT =	geometry library for topological robustness
GH_ACCOUNT =	elalish
GH_PROJECT =	manifold
GH_TAGNAME =	v3.3.2

CATEGORIES =	cad

SHARED_LIBS +=  manifold                  0.0 # 0.0
SHARED_LIBS +=  manifoldc                 0.0 # 0.0

# Apache-2.0 license
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

WANTLIB += ${COMPILER_LIBCXX} Clipper2 m

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	cad/clipper2

BUILD_DEPENDS =	devel/gtest

CONFIGURE_ARGS = -DMANIFOLD_DOWNLOADS=OFF

.include <bsd.port.mk>
