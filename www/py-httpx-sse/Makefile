COMMENT =		consume Server-Sent Events (SSE) with HTTPX

MODPY_DISTV =		0.4.3
DISTNAME =		httpx_sse-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		www

HOMEPAGE =		https://github.com/florimondmanca/httpx-sse

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		www/py-httpx

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>
