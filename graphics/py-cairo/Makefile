# $OpenBSD: Makefile,v 1.56 2020/07/03 21:12:55 sthen Exp $

# XXX version 1.19.0 and up do not support python2 anymore

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		cairo bindings for Python

MODPY_EGG_VERSION=	1.18.2
GH_ACCOUNT=		pygobject
GH_PROJECT=		pycairo
GH_TAGNAME=		v${MODPY_EGG_VERSION}
PKGNAME=		py-cairo-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		graphics

HOMEPAGE=		https://pycairo.readthedocs.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} cairo pthread

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			graphics/cairo

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./${MODPY_SETUP} test

.include <bsd.port.mk>
