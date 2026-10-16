COMMENT=	Server-Sent Events (SSE) for Starlette and FastAPI

MODPY_DISTV=	3.5.0
GH_ACCOUNT=	sysid
GH_PROJECT=	sse-starlette
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-sse-starlette-${MODPY_DISTV}

CATEGORIES=	www

HOMEPAGE=	https://github.com/sysid/sse-starlette

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	www/py-starlette \
		net/py-anyio

# needs asgi_lifespan
NO_TEST=	Yes

.include <bsd.port.mk>
