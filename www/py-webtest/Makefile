# $OpenBSD: Makefile,v 1.20 2020/07/03 21:13:21 sthen Exp $

COMMENT =		helper to test wsgi applications

MODPY_EGG_VERSION =	2.0.30
DISTNAME =		WebTest-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		1

CATEGORIES =		www devel

HOMEPAGE =		http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-waitress${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-webob${MODPY_FLAVOR}>=1.2

# also needs WSGIProxy2, PasteDeploy and pyquery
TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
