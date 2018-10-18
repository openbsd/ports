# $OpenBSD: Makefile,v 1.15 2018/10/18 23:19:56 danj Exp $

COMMENT =		helper to test wsgi applications

MODPY_EGG_VERSION =	2.0.30
DISTNAME =		WebTest-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-waitress${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-webob${MODPY_FLAVOR}>=1.2

# also needs WSGIProxy2, PasteDeploy and pyquery
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} lib tests

.include <bsd.port.mk>
