COMMENT =		fully featured HTTP client library

MODPY_DISTV =		0.28.1
DISTNAME =		httpx-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

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

TEST_DEPENDS =		security/py-trustme \
			textproc/py-chardet \
			www/py-uvicorn

.include <bsd.port.mk>
