# $OpenBSD: Makefile,v 1.1.1.1 2018/08/14 05:56:19 remi Exp $

COMMENT =		OAuth library support for python-requests

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		requests-oauthlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/requests-oauthlib

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		security/py-oauthlib${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			www/py-requests-mock${MODPY_FLAVOR} \
			${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-test:
	rm -rf ${WRKSRC}/tests/__pycache__

# the tests make connections to http://httpbin.org
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
