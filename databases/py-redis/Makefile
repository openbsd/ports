COMMENT =		Python interface to Redis

MODPY_DISTV =	5.0.9
DIST_TUPLE =		github redis redis-py v${MODPY_DISTV} .

PKGNAME =		py-${DISTNAME:S/-py//}
CATEGORIES =		databases
REVISION =		0

HOMEPAGE =		https://github.com/redis/redis-py

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

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
