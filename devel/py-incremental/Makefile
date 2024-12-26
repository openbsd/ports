COMMENT =	versioning library for Python projects

MODPY_DISTV =	24.7.2

DISTNAME =	incremental-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PI =	Yes
# _build_meta wraps setuptools
MODPY_PYBUILD =	setuptools

MODPY_PYTEST_ARGS = --ignore tests/test_examples.py

RUN_DEPENDS =	devel/py-setuptools
TEST_DEPENDS =	devel/py-click \
		devel/py-twisted

.include <bsd.port.mk>
