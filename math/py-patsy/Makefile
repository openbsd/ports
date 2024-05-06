COMMENT =		Python package for describing statistical models

MODPY_EGG_VERSION =	0.5.6
DISTNAME =		patsy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	patsy

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
