# XXX version 1.19.0 and up do not support python2 anymore;
# python3 support lives in graphics/py-cairo
PORTROACH=		limit:^1\.18

# no libGL (toolchain issue)
NOT_FOR_ARCHS=		m88k

COMMENT=		cairo bindings for Python2

MODPY_DISTV=	1.18.2
GH_ACCOUNT=		pygobject
GH_PROJECT=		pycairo
GH_TAGNAME=		v${MODPY_DISTV}
PKGNAME=		py-cairo-${MODPY_DISTV}
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
