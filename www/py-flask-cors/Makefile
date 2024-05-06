COMMENT =	CORS handling for flask

MODPY_EGG_VERSION =	3.0.10
DISTNAME =	Flask-Cors-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	www

HOMEPAGE =	https://flask-cors.readthedocs.io/

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS +=	www/py-flask${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
