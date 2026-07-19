COMMENT=	model context protocol SDK

MODPY_DISTV=	1.28.1
DISTNAME=	mcp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://modelcontextprotocol.io/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

BUILD_DEPENDS=	devel/py-uv-dynamic-versioning

RUN_DEPENDS =	net/py-anyio>=4.5 \
		www/py-httpx>=0.27.1,<1.0.0 \
		www/py-httpx-sse>=0.4 \
		devel/py-pydantic>=2.12.0,<3.0.0 \
		www/py-starlette>=0.48.0 \
		www/py-multipart>=0.0.9 \
		devel/py-pydantic-settings>=2.5.2 \
		www/py-uvicorn>=0.31.1 \
		devel/py-jsonschema>=4.20.0 \
		www/py-jwt>=2.10.1 \
		devel/py-typing-extensions>=4.9.0 \
		devel/py-typing-inspection>=0.4.1 \
		www/py-sse-starlette

TEST_DEPENDS =	devel/py-dirty-equals \
		devel/py-inline-snapshot \
		devel/py-test-xdist \
		devel/py-typer \
		net/py-websockets

.include <bsd.port.mk>
