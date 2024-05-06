COMMENT =	lightweight pipelining: using Python functions as pipeline

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		joblib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		sysutils

# https://github.com/joblib/joblib
HOMEPAGE =		https://joblib.readthedocs.io

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
