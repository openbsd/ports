COMMENT=	lightweight ASGI library

MODPY_DISTV=	1.8.0
DISTNAME=	starlette-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# https://github.com/Kludex/starlette
HOMEPAGE=	https://starlette.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	net/py-anyio \
		www/py-httpx2

# most of the TDEPs are also rdeps for [full] (except py-trio)
TEST_DEPENDS=	devel/py-trio \
		textproc/py-yaml \
		www/py-httpx \
		www/py-itsdangerous \
		www/py-jinja2 \
		www/py-python-multipart

# wants opentelemetry-api
MODPY_PYTEST_IGNORE= tests/middleware/test_opentelemetry.py

.include <bsd.port.mk>
