COMMENT =		py.test plugin to validate Jupyter notebooks

MODPY_DISTV =		0.11.0
DISTNAME =		nbval-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/computationalmodelling/nbval

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# needs port for nbdime
MODPY_PYTEST_ARGS =	--ignore tests/test_nbdime_reporter.py

RUN_DEPENDS =		devel/py-ipykernel \
			devel/py-jupyter_client \
			devel/py-nbformat

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-coverage \
			math/py-sympy

.include <bsd.port.mk>
