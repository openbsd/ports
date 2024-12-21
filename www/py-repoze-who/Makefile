COMMENT =	identification and authentication framework for WSGI

MODPY_DISTV =	2.4.1
DISTNAME =	repoze.who-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	3

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	repoze/who/tests

RUN_DEPENDS =		www/py-webob

.include <bsd.port.mk>
