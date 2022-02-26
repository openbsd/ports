# $OpenBSD: Makefile,v 1.5 2022/02/26 17:32:06 sthen Exp $

# XXX version 1.19.0 and up do not support python2 anymore;
# python3 support lives in graphics/py-cairo
PORTROACH=		limit:^1\.18

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		cairo bindings for Python2

MODPY_EGG_VERSION=	1.18.2
GH_ACCOUNT=		pygobject
GH_PROJECT=		pycairo
GH_TAGNAME=		v${MODPY_EGG_VERSION}
PKGNAME=		py-cairo-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=		graphics

HOMEPAGE=		https://pycairo.readthedocs.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} cairo pthread

MODULES=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
NO_TEST =		Yes

MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			graphics/cairo

.include <bsd.port.mk>
