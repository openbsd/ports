COMMENT =		fully featured HTTP client library

MODPY_DISTV =	0.27.0
DISTNAME =		httpx-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://www.python-httpx.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS =		devel/py-certifi \
			devel/py-sniffio \
			net/py-anyio \
			net/py-idna \
			www/py-httpcore
# needs uvicorn
TEST_DEPENDS =		security/py-trustme

.include <bsd.port.mk>
