COMMENT =	lightweight pipelining: using Python functions as pipeline

MODPY_DISTV =	1.2.0
DISTNAME =		joblib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		sysutils

# https://github.com/joblib/joblib
HOMEPAGE =		https://joblib.readthedocs.io

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-test-cov \
			math/py-numpy

.include <bsd.port.mk>
