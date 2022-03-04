# $OpenBSD: Makefile,v 1.13 2022/03/04 21:49:23 sthen Exp $

COMMENT =		freezes a Flask application into a set of static files

MODPY_EGG_VERSION =	0.15
DISTNAME =		Frozen-Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-frozen-flask-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://github.com/SimonSapin/Frozen-Flask

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	flask_frozen/tests.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>
