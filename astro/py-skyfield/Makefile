COMMENT=	computes positions for the stars, planets, and satellites

MODPY_DISTV =	1.49

DISTNAME=	skyfield-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	astro

HOMEPAGE=	http://github.com/brandon-rhodes/python-skyfield/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
# tests require "assay"
NO_TEST=	Yes

RUN_DEPENDS=	astro/py-jplephem \
		astro/py-sgp4 \
		math/py-numpy

.include <bsd.port.mk>
