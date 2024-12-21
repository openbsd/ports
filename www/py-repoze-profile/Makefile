COMMENT =	aggregate profiling for wsgi requests

MODPY_DISTV =	2.3
DISTNAME =	repoze.profile-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	3

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/py-pyprof2calltree

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	repoze/profile/tests.py

.include <bsd.port.mk>
