COMMENT =		helper to test wsgi applications

MODPY_DISTV =	2.0.35
DISTNAME =		WebTest-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}
REVISION =		4

CATEGORIES =		www devel

HOMEPAGE =		http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-six \
			www/py-waitress \
			www/py-beautifulsoup4 \
			www/py-webob>=1.2

# also needs WSGIProxy2 and PasteDeploy
TEST_DEPENDS =		devel/py-coverage \
			devel/py-mock \
			www/py-query

.include <bsd.port.mk>
