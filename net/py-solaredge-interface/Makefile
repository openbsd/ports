COMMENT =	collect data from SolarEdge API

MODPY_DISTV =	0.3.2
DISTNAME =	solaredge-interface-${MODPY_DISTV}
PKGNAME =	py-solaredge-interface-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://solaredge-interface.readthedocs.io/

# BSD-2 clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

MODPY_PI =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	math/py-pandas \
		devel/py-click \
		devel/py-dateutil \
		devel/py-tz \
		www/py-requests

.include <bsd.port.mk>
