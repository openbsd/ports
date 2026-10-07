COMMENT =		Python interface to Redis

# https://github.com/redis/redis-py#supported-redis-versions
MODPY_DISTV =		8.1.0
GH_ACCOUNT =		redis
GH_PROJECT =		redis-py
GH_TAGNAME =		v${MODPY_DISTV}
PKGNAME =		py-redis-${MODPY_DISTV}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/redis/redis-py

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		hatchling
MODPY_PYTEST_ARGS =	--disable-pytest-warnings \
			-m "onlynoncluster and not redismod"

# needs redis-entraid
MODPY_PYTEST_IGNORE +=	tests/test_asyncio/test_credentials.py \
			tests/test_credentials.py
# needs opentelemetry
MODPY_PYTEST_IGNORE +=	tests/test_observability/test_recorder.py
# needs pybreaker
MODPY_PYTEST_IGNORE +=	tests/test_asyncio/test_multidb \
			tests/test_asyncio/test_scenario \
			tests/test_multidb \
			tests/test_scenario

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

RUN_DEPENDS =		devel/py-async-timeout \
			www/py-jwt

TEST_DEPENDS =		databases/redis/bsd \
			devel/py-cachetools \
			devel/py-invoke \
			devel/py-mock \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-uvloop \
			math/py-numpy \
			textproc/py-ujson

.include <bsd.port.mk>
