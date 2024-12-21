COMMENT =		asyncio cache manager for redis, memcached and memory

MODPY_DISTV =	0.12.2

DISTNAME =		aiocache-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://aiocache.aio-libs.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	--ignore tests/acceptance/test_serializers.py

# Missed marshmallow serializer due to missed dependency
RUN_DEPENDS =		databases/py-redis \
			misc/py-aiomcache \
			net/py-msgpack \
			www/py-aiohttp

TEST_DEPENDS =		devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-test-mock

.include <bsd.port.mk>
