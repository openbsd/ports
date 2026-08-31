COMMENT =		consume Server-Sent Events (SSE) with HTTPX

MODPY_DISTV =		0.4.3
DISTNAME =		httpx_sse-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/florimondmanca/httpx-sse

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		www/py-httpx

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>
