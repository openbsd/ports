COMMENT =	tiny LRU cache implementation and decorator

MODPY_EGG_VERSION = 0.7
DISTNAME =	repoze.lru-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	2

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	repoze/lru/tests.py

.include <bsd.port.mk>
