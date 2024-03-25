COMMENT =		microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	2.3.3
DISTNAME =		flask-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www devel

HOMEPAGE =		https://flask.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

RUN_DEPENDS =		devel/py-blinker${MODPY_FLAVOR}>=1.6.2 \
			devel/py-click${MODPY_FLAVOR}>=8.1.3 \
			www/py-itsdangerous${MODPY_FLAVOR}>=2.1.2 \
			www/py-jinja2${MODPY_FLAVOR}>=3.1.2 \
			www/py-werkzeug${MODPY_FLAVOR}>=2.3.7

.include <bsd.port.mk>
