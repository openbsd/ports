# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:03 sthen Exp $

COMMENT =		OAuth library support for python-requests

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		requests-oauthlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/requests-oauthlib

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		security/py-oauthlib${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			www/py-requests-mock${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# the tests make connections to http://httpbin.org
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

pre-test:
	rm -rf ${WRKSRC}/tests/__pycache__

.include <bsd.port.mk>
