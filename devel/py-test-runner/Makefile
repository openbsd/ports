COMMENT =	deprecated fixture to invoke py.test as distutils command

MODPY_EGG_VERSION =	6.0.0
DISTNAME =	pytest-runner-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	devel
REVISION =	2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

RUN_DEPENDS =	devel/py-test${MODPY_FLAVOR}

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

FLAVORS =	python3
FLAVOR =	python3

# needs unported deps
NO_TEST =	Yes

.include <bsd.port.mk>
