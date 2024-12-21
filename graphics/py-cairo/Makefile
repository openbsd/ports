# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		cairo bindings for Python

MODPY_DISTV=	1.27.0
REVISION=		1
GH_ACCOUNT=		pygobject
GH_PROJECT=		pycairo
GH_TAGNAME=		v${MODPY_DISTV}
PKGNAME=		py-cairo-${MODPY_DISTV}

CATEGORIES=		graphics

HOMEPAGE=		https://pycairo.readthedocs.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += cairo

MODULES=		devel/meson \
			lang/python

LIB_DEPENDS=		graphics/cairo

TEST_DEPENDS=		devel/py-test

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./${MODPY_SETUP} test

.include <bsd.port.mk>
