# $OpenBSD: Makefile,v 1.1.1.1 2013/03/19 15:47:41 sthen Exp $

COMMENT=	C++ mathematics header-only library for OpenGL software

DISTNAME=	glm-0.9.4.2
EXTRACT_SUFX=	.zip
# broken zip; DOS line-endings everywhere but not marked as ascii in .zip
# -aa breaks the png files in the docs, but we don't install them anyway
UNZIP=		unzip -aa

CATEGORIES=	graphics math

HOMEPAGE=	http://glm.g-truc.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ogl-math/}

MODULES=	devel/cmake

# it's kind-of a NO_BUILD port, but doing so means you can't
# run the tests.
CONFIGURE_ARGS+=	-DGLM_TEST_ENABLE=BOOLEAN=ON

PKG_ARCH=	*

.include <bsd.port.mk>
