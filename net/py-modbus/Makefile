# do not update to 3.5.0, breaking change
# cf https://github.com/nmakel/solaredge_modbus/issues/83
COMMENT =	full modbus protocol written in python

MODPY_EGG_VERSION =	3.4.1
REVISION =	1
DISTNAME =	pymodbus-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	net

HOMEPAGE =	https://github.com/pymodbus-dev/pymodbus

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

MODPY_PI =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-serial${MODPY_FLAVOR}
FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
