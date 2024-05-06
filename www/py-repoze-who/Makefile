COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.4.1
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	2

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	repoze/who/tests

RUN_DEPENDS =		www/py-webob${MODPY_FLAVOR}

.include <bsd.port.mk>
