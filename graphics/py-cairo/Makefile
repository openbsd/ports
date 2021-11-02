# $OpenBSD: Makefile,v 1.61 2021/11/02 00:01:16 sthen Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		cairo bindings for Python

MODPY_EGG_VERSION=	1.20.1
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

WANTLIB += cairo pthread

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

LIB_DEPENDS=		graphics/cairo

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./${MODPY_SETUP} test

.include <bsd.port.mk>
