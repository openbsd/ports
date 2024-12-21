COMMENT =		py.test plugin to validate Jupyter notebooks

MODPY_DISTV =	0.9.6
DISTNAME =		nbval-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/computationalmodelling/nbval

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	-v --current-env

RUN_DEPENDS =		devel/py-ipykernel \
			devel/py-jupyter_client \
			devel/py-nbformat \
			devel/py-six \
			devel/py-test-cov
TEST_DEPENDS =		devel/py-nbval \
			math/py-sympy

.include <bsd.port.mk>
