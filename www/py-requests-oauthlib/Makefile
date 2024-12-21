COMMENT =		OAuth library support for python-requests

MODPY_DISTV =	1.3.1
DISTNAME =		requests-oauthlib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/requests-oauthlib

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		security/py-oauthlib \
			www/py-requests

TEST_DEPENDS =		devel/py-mock \
			www/py-requests-mock

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# the tests make connections to http://httpbin.org

pre-test:
	rm -rf ${WRKSRC}/tests/__pycache__

.include <bsd.port.mk>
