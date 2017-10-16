# $OpenBSD: Makefile,v 1.1.1.1 2017/10/16 21:05:44 remi Exp $

COMMENT =		py.test plugin to test server connections locally

MODPY_EGG_VERSION =	0.3.7
DISTNAME =		pytest-localserver-${MODPY_EGG_VERSION}
PKGNAME =		py-test-localserver-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
