COMMENT=	uniform API for multiple LLM providers

MODPY_DISTV=	1.90.0
DISTNAME=	litellm-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://litellm.ai/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	uv_build

RUN_DEPENDS =	devel/py-click<9.0 \
		devel/py-fastuuid<1.0 \
		devel/py-importlib-metadata<9.0 \
		devel/py-jsonschema<5.0 \
		devel/py-pydantic<3.0.0 \
		sysutils/py-dotenv<2.0 \
		devel/py-openai<3.0.0 \
		textproc/py-tiktoken<1.0 \
		textproc/py-tokenizers<1.0 \
		www/py-aiohttp<4.0 \
		www/py-httpx<1.0 \
		www/py-jinja2<4.0

# needed for litellm cli, see litellm[proxy]
# XXX: needs fastapi_sso and probably many more...
RUN_DEPENDS+=	devel/py-backoff \
		net/py-websockets \
		security/py-cryptography \
		sysutils/py-apscheduler \
		textproc/py-orjson \
		textproc/py-yaml \
		www/py-jwt \
		www/py-python-multipart

TEST_DEPENDS =	www/py-fastapi

.include <bsd.port.mk>
