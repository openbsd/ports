COMMENT =		a set of py.test fixtures to test Flask app

MODPY_DISTV =		1.3.0

DISTNAME =		pytest-flask-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-flask

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-test \
			www/py-flask \
			www/py-werkzeug

# tests need network access and LiveServer test fails
TEST_DEPENDS =		devel/py-mock \
			devel/pylint \
			devel/py-coverage \
			devel/py-mypy

.include <bsd.port.mk>
