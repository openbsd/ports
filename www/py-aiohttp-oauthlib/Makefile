COMMENT =		oauthlib for aiohttp clients

MODPY_EGG_VERSION =	0.1.0
DISTNAME =		aiohttp-oauthlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
NO_TEST =		Yes

RUN_DEPENDS =		security/py-oauthlib${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR}

.include <bsd.port.mk>
