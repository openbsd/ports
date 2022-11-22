COMMENT =		microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	2.1.3
DISTNAME =		Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		https://flask.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-blinker${MODPY_FLAVOR} \
			www/py-itsdangerous${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR}>=8.0.0

.include <bsd.port.mk>
