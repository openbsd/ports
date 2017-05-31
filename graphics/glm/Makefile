# $OpenBSD: Makefile,v 1.4 2017/05/31 08:08:16 espie Exp $

COMMENT=	C++ mathematics header-only library for OpenGL software

GH_TAGNAME=	0.9.7.1
GH_PROJECT=	glm
GH_ACCOUNT=	g-truc
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES=	graphics math

HOMEPAGE=	http://glm.g-truc.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/cmake 

COMPILER = 	gcc

# it's kind-of a NO_BUILD port, but doing so means you can't
# run the tests.
CONFIGURE_ARGS+=	-DGLM_TEST_ENABLE=BOOLEAN=ON

PKG_ARCH=	*

.include <bsd.port.mk>
