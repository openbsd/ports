# $OpenBSD: Makefile,v 1.6 2017/06/16 09:34:36 czarkoff Exp $

COMMENT=	C++ mathematics header-only library for OpenGL software

GH_TAGNAME=	0.9.8.4
GH_PROJECT=	glm
GH_ACCOUNT=	g-truc
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES=	graphics math

HOMEPAGE=	http://glm.g-truc.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/cmake

COMPILER =	gcc

# it's kind-of a NO_BUILD port, but doing so means you can't
# run the tests.
CONFIGURE_ARGS+=-DGLM_TEST_ENABLE=BOOLEAN=ON

CXXFLAGS+=	-Wno-long-long

PKG_ARCH=	*

.include <bsd.port.mk>
