COMMENT=	C++ mathematics header-only library for OpenGL software

GH_TAGNAME=	1.0.2
GH_PROJECT=	glm
GH_ACCOUNT=	g-truc

CATEGORIES=	graphics math

HOMEPAGE=	https://glm.g-truc.net/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

# c++ header only lib + tests
COMPILER=	base-clang ports-gcc

# it's kind-of a NO_BUILD port, but doing so means you can't
# run the tests.
CONFIGURE_ARGS +=      -DGLM_BUILD_TESTS=ON

PKG_ARCH=	*

.include <bsd.port.mk>
