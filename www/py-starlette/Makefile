COMMENT =		lightweight ASGI library

MODPY_DISTV =		0.47.3

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
			www/py-httpx \
			www/py-itsdangerous \
			www/py-jinja2 \
			www/py-multipart

.include <bsd.port.mk>
