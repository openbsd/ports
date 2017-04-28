# $OpenBSD: Makefile,v 1.35 2017/04/28 15:04:32 ajacoutot Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		cairo bindings for Python

MODPY_EGG_VERSION=	1.12.0
GH_ACCOUNT=		pygobject
GH_PROJECT=		pycairo
GH_TAGNAME=		v${MODPY_EGG_VERSION}
PKGNAME=		py-cairo-${MODPY_EGG_VERSION}

CATEGORIES=		graphics

HOMEPAGE=		https://pycairo.readthedocs.io

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} cairo pthread

MODULES=		lang/python

FLAVORS=		python3
FLAVOR ?=

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			graphics/cairo

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

do-test: install
	cd ${WRKSRC}/tests && ${MODPY_BIN} ./test_api.py

.include <bsd.port.mk>
