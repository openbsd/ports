COMMENT =		coding agent for AI models

MODPY_DISTV =		1.0.37
DISTNAME =		swival-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://pypi.org/project/swival/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

# XXX may need porting:
#	converters/py-html-to-markdown>=3.7.2,<4 (required)
#	devel/py-google-cloud-aiplatform>=1.158.0 (required)
#	devel/py-starlark-go>=1.0.1 (optional; blocked by golang/go#33896)

RUN_DEPENDS =	devel/py-litellm>=1.90,<1.91 \
		devel/py-mcp>=1.28.1,<2 \
		devel/py-prompt_toolkit>=3.0.52 \
		devel/py-rich>=15.0.0 \
		net/py-boto3>=1.43.36 \
		security/py-fast-cipher>=0.2.2 \
		textproc/py-rank-bm25>=0.2.2 \
		textproc/py-tiktoken>=0.13.0 \
		www/py-httpx>=0.28.1 \
		www/py-starlette>=1.3.1 \
		www/py-uvicorn>=0.49.0

.include <bsd.port.mk>
