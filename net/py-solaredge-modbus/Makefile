COMMENT =	collect data from SolarEdge inverters over Modbus

MODPY_EGG_VERSION =	0.7.2
REVISION =	1
DISTNAME =	solaredge_modbus-${MODPY_EGG_VERSION}
PKGNAME =	py-solaredge-modbus-${MODPY_EGG_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/nmakel/solaredge_modbus

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

MODPY_PI =	Yes
NO_TEST =	Yes

# https://github.com/nmakel/solaredge_modbus/issues/83
RUN_DEPENDS =	net/py-modbus${MODPY_FLAVOR}=3.4.1
FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
