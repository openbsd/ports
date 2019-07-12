# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:59 sthen Exp $

COMMENT=	C++ mathematics header-only library for OpenGL software

GH_TAGNAME=	0.9.8.5
GH_PROJECT=	glm
GH_ACCOUNT=	g-truc

CATEGORIES=	graphics math

HOMEPAGE=	https://glm.g-truc.net/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

COMPILER =	base-clang ports-clang ports-gcc

# it's kind-of a NO_BUILD port, but doing so means you can't
# run the tests.
CONFIGURE_ARGS+=-DGLM_TEST_ENABLE=BOOLEAN=ON

CXXFLAGS+=	-Wno-long-long

PKG_ARCH=	*

.include <bsd.port.mk>
