COMMENT =		NTLM authentication support for HTTPX

MODPY_DISTV =	1.4.0
DISTNAME =		httpx_ntlm-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/ulodciv/httpx-ntlm

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-spnego \
			www/py-httpx

NO_TEST =		Yes

.include <bsd.port.mk>
