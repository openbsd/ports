COMMENT =		Python package for describing statistical models

MODPY_DISTV =	0.5.6
DISTNAME =		patsy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	patsy

RUN_DEPENDS =		devel/py-six \
			math/py-numpy

TEST_DEPENDS =		devel/py-test-cov \
			math/py-scipy

.include <bsd.port.mk>
