COMMENT =		freezes a Flask application into a set of static files

MODPY_DISTV =	0.19
DISTNAME =		Frozen-Flask-${MODPY_DISTV}
PKGNAME =		py-frozen-flask-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/SimonSapin/Frozen-Flask

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	flask_frozen/tests.py

RUN_DEPENDS +=		www/py-flask

.include <bsd.port.mk>
