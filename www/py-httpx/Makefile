COMMENT =		fully featured HTTP client library

MODPY_EGG_VERSION =	0.27.0
DISTNAME =		httpx-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://www.python-httpx.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-certifi${MODPY_FLAVOR} \
			devel/py-sniffio${MODPY_FLAVOR} \
			net/py-anyio${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			www/py-httpcore${MODPY_FLAVOR}
# needs uvicorn
TEST_DEPENDS =		security/py-trustme${MODPY_FLAVOR}

.include <bsd.port.mk>
