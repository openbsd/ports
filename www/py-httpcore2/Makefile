COMMENT=	minimal low-level HTTP client

MODPY_DISTV=	2.13.1
GH_ACCOUNT=	pydantic
# this is a monorepo, containing both httpcore2 and httpx2
GH_PROJECT=	httpx2
GH_TAGNAME=	v${MODPY_DISTV}
WRKSRC=		${WRKDIST}/src/httpcore2
PKGNAME=	py-httpcore2-${MODPY_DISTV}

CATEGORIES=	www

# https://github.com/pydantic/httpx2
# src/httpcore2/CHANGELOG.md
HOMEPAGE=       https://httpx2.pydantic.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme \
		devel/py-uv-dynamic-versioning

RUN_DEPENDS=	devel/py-certifi \
		www/py-h11>=0.16

# combined test suite run from www/py-httpx2
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
