COMMENT =	mercantile additional commands

MODPY_DISTV =	0.2.0
DISTNAME =	supermercado-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	geo
MAINTAINER =    Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	math/py-affine \
		devel/py-click \
		devel/py-click-plugins \
		geo/py-cligj \
		geo/py-mercantile \
		math/py-numpy \
		geo/py-rasterio

# does not package tests, only available via git
NO_TEST =       Yes
TEST_DEPENDS =	devel/py-test

.include <bsd.port.mk>
