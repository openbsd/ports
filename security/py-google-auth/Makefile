COMMENT =	Google authentication library

MODPY_DISTV =	2.42.0
DISTNAME =	google_auth-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	security

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-cachetools \
		devel/py-asn1-modules \
		devel/py-six \
		security/py-rsa

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
