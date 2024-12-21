COMMENT =		microframework based on Werkzeug and Jinja 2

MODPY_DISTV =	2.3.3
DISTNAME =		flask-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www devel

HOMEPAGE =		https://flask.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

RUN_DEPENDS =		devel/py-blinker>=1.6.2 \
			devel/py-click>=8.1.3 \
			www/py-itsdangerous>=2.1.2 \
			www/py-jinja2>=3.1.2 \
			www/py-werkzeug>=2.3.7

.include <bsd.port.mk>
