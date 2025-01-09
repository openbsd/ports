COMMENT=	asyncio cache manager for redis, memcached and memory

MODPY_DISTV=	0.12.3

DISTNAME=	aiocache-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://aiocache.aio-libs.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# requires "marshmallow"
MODPY_PYTEST_ARGS= --ignore tests/acceptance/test_serializers.py

RUN_DEPENDS=	databases/py-redis \
		misc/py-aiomcache \
		net/py-msgpack \
		www/py-aiohttp

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-mock

.include <bsd.port.mk>
