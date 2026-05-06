COMMENT =	Google authentication library

MODPY_DISTV =	2.50.0
DISTNAME =	google_auth-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	security

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-asn1-modules \
		security/py-cryptography

TEST_DEPENDS =	devel/py-aioresponses \
		devel/py-freezegun \
		devel/py-mock \
		devel/py-test-asyncio \
		devel/py-test-localserver \
		security/py-openssl \
		security/py-pyu2f \
		www/py-aiohttp \
		www/py-flask \
		www/py-jwt \
		www/py-requests \
		www/py-responses

.include <bsd.port.mk>
