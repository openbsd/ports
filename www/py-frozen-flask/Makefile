COMMENT =		freezes a Flask application into a set of static files

MODPY_EGG_VERSION =	0.18
DISTNAME =		Frozen-Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-frozen-flask-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/SimonSapin/Frozen-Flask

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	flask_frozen/tests.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>
