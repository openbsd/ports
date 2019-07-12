# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:54 sthen Exp $

COMMENT =		py.test plugin to test server connections locally

MODPY_EGG_VERSION =	0.3.7
DISTNAME =		pytest-localserver-${MODPY_EGG_VERSION}
PKGNAME =		py-test-localserver-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
