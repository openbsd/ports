COMMENT =		asyncio cache manager for redis, memcached and memory

MODPY_EGG_VERSION =	0.12.2

DISTNAME =		aiocache-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://aiocache.aio-libs.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	--ignore tests/acceptance/test_serializers.py

# Missed marshmallow serializer due to missed dependency
RUN_DEPENDS =		databases/py-redis${MODPY_FLAVOR} \
			misc/py-aiomcache${MODPY_FLAVOR} \
			net/py-msgpack${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
