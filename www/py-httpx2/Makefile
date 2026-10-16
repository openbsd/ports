COMMENT=	HTTP/1.x and HTTP/2 client for Python

MODPY_DISTV=	2.13.1
GH_ACCOUNT=	pydantic
GH_PROJECT=	httpx2
GH_TAGNAME=	v${MODPY_DISTV}
WRKSRC=		${WRKDIST}/src/httpx2
PKGNAME=	py-httpx2-${MODPY_DISTV}

CATEGORIES=	www

# https://github.com/pydantic/httpx2
# src/httpx2/CHANGELOG.md
HOMEPAGE=	https://httpx2.pydantic.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme \
		devel/py-uv-dynamic-versioning

# main
RUN_DEPENDS=	security/py-truststore \
		www/py-httpcore2=${MODPY_DISTV} \
		net/py-anyio \
		net/py-idna
# [cli]
RUN_DEPENDS+=	devel/py-click \
		textproc/py-pygments<3 \
		devel/py-rich
# [http2]
RUN_DEPENDS+=	www/py-h2

MODPY_PYTEST_ARGS= ${WRKDIST}/tests/httpx2

# httpx2[brotli,cli,http2,socks,ws,zstd]; also wants socksio
TEST_DEPENDS=	archivers/py-brotli
# httpcore2[asyncio,trio,http2,socks]
TEST_DEPENDS+=	net/py-anyio \
		devel/py-trio
# main set; also wants trio-typing
TEST_DEPENDS+=	textproc/py-chardet \
		devel/py-coverage \
		security/py-cryptography \
		devel/py-flaky \
		devel/py-test-codspeed \
		devel/py-test-httpbin \
		devel/py-test-trio \
		www/py-starlette \
		security/py-trustme \
		www/py-uvicorn \
		net/py-websockets \
		www/py-werkzeug

MODPY_TEST_DIR=      ${WRKDIST}
MODPY_PYTEST_IGNORE= tests/httpx2/websockets

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
