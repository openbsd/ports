COMMENT=	OAuth library support for python-requests

MODPY_DISTV=	2.0.0
DISTNAME=	requests-oauthlib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/requests/requests-oauthlib

# ISC
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	security/py-oauthlib \
		www/py-requests

TEST_DEPENDS=	devel/py-mock \
		www/py-requests-mock \
		www/py-selenium

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# uses chromedriver (in the chromium package, but fails in ports test environment)
MODPY_PYTEST_ARGS= --ignore tests/examples/test_native_spa_pkce_auth0.py:8:

# some tests make connections to http://httpbin.org
pre-test:
	rm -rf ${WRKSRC}/tests/__pycache__

.include <bsd.port.mk>
