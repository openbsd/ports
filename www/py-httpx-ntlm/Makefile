COMMENT =		NTLM authentication support for HTTPX

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		httpx_ntlm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		www

HOMEPAGE =		https://github.com/ulodciv/httpx-ntlm

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-spnego${MODPY_FLAVOR} \
			www/py-httpx${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
