COMMENT =	collect data from SolarEdge API

MODPY_EGG_VERSION =	0.3.2
DISTNAME =	solaredge-interface-${MODPY_EGG_VERSION}
PKGNAME =	py-solaredge-interface-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://solaredge-interface.readthedocs.io/

# BSD-2 clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

MODPY_PI =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	math/py-pandas${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
