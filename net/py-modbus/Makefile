COMMENT =	full modbus protocol written in python

MODPY_EGG_VERSION =	3.7.4
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
