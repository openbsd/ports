COMMENT =		Python interface to Redis

MODPY_DISTV =		5.0.9
GH_ACCOUNT =		redis
GH_PROJECT =		redis-py
GH_TAGNAME =		v${MODPY_DISTV}
PKGNAME =		py-redis-${MODPY_DISTV}

CATEGORIES =		databases
REVISION =		2

HOMEPAGE =		https://github.com/redis/redis-py

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	--disable-pytest-warnings \
			-m "onlynoncluster and not redismod"

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

RUN_DEPENDS =		devel/py-async-timeout \

TEST_DEPENDS =		databases/redis \
			devel/py-cachetools \
			devel/py-invoke \
			devel/py-mock \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-uvloop \
			math/py-numpy \
			textproc/py-ujson

.include <bsd.port.mk>
