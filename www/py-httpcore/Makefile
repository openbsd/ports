COMMENT =		minimal low-level HTTP client

MODPY_DISTV =	1.0.5
DISTNAME =		httpcore-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://encode.io/httpcore/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS =		devel/py-certifi \
			www/py-h11>=0.13,<0.15

TEST_DEPENDS =		devel/py-trio \
			net/py-anyio \
			www/py-hpack \
			www/py-hyperframe

.include <bsd.port.mk>
