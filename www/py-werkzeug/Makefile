# $OpenBSD: Makefile,v 1.42 2021/11/27 22:45:05 sthen Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	2.0.2
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		https://palletsprojects.com/p/werkzeug/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-greenlet${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xprocess${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
# wants watchdog, pytest 6

.include <bsd.port.mk>
