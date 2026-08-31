COMMENT =		lightweight ASGI library

MODPY_DISTV =		1.3.1

DISTNAME =		starlette-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://www.starlette.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		net/py-anyio

# XXX: needs httpx2
TEST_DEPENDS =		devel/py-trio \
			textproc/py-yaml \
			www/py-httpx \
			www/py-itsdangerous \
			www/py-jinja2 \
			www/py-python-multipart

.include <bsd.port.mk>
