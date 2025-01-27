COMMENT=	client library and CLI for Planet's public API

MODPY_DISTV=	2.13.1
DISTNAME=	planet-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	geo

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click \
		geo/py-geojson \
		www/py-httpx<0.28.0 \
		devel/py-jsonschema \
		www/py-jwt \
		devel/py-tqdm \
		devel/py-typing-extensions

MODPY_PYTEST_ARGS= tests

TEST_DEPENDS=	devel/py-test-cov \
		net/py-anyio \
		www/py-respx

.include <bsd.port.mk>
