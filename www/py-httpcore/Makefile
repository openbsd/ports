COMMENT =		minimal low-level HTTP client

MODPY_EGG_VERSION =	1.0.5
DISTNAME =		httpcore-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://encode.io/httpcore/

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
			www/py-h11${MODPY_FLAVOR}>=0.13,<0.15

# needs hpack, hyperframe
TEST_DEPENDS =		devel/py-trio${MODPY_FLAVOR} \
			net/py-anyio${MODPY_FLAVOR}

.include <bsd.port.mk>
