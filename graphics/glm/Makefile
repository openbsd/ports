COMMENT=	C++ mathematics header-only library for OpenGL software

GH_TAGNAME=	0.9.9.8
GH_PROJECT=	glm
GH_ACCOUNT=	g-truc
REVISION=	2

CATEGORIES=	graphics math

HOMEPAGE=	https://glm.g-truc.net/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

# c++ header only lib + tests
COMPILER=	base-clang ports-gcc

# it's kind-of a NO_BUILD port, but doing so means you can't
# run the tests.
CONFIGURE_ARGS +=	-DGLM_TEST_ENABLE=ON

# https://github.com/g-truc/glm/pull/1121
CXXFLAGS +=	-Wno-unused-but-set-variable

PKG_ARCH=	*

do-install:
	cp -Rp ${WRKSRC}/glm ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/lib/cmake
	cp -Rp ${WRKSRC}/cmake/glm/ ${PREFIX}/lib/cmake

.include <bsd.port.mk>
