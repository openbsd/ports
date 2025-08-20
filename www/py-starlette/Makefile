COMMENT =		lightweight ASGI library

MODPY_DISTV =		0.47.2

DISTNAME =		starlette-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://www.starlette.io/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		net/py-anyio

TEST_DEPENDS =		textproc/py-yaml \
			www/py-multipart

.include <bsd.port.mk>
