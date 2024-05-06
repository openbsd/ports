COMMENT =	aggregate profiling for wsgi requests

MODPY_EGG_VERSION = 2.3
DISTNAME =	repoze.profile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	2

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/py-pyprof2calltree${MODPY_FLAVOR}

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	repoze/profile/tests.py

.include <bsd.port.mk>
