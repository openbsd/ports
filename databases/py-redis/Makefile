COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	5.0.9
DIST_TUPLE =		github redis redis-py v${MODPY_EGG_VERSION} .

PKGNAME =		py-${DISTNAME:S/-py//}
CATEGORIES =		databases

HOMEPAGE =		https://github.com/redis/redis-py

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	--disable-pytest-warnings \
			-m "onlynoncluster and not redismod"

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

RUN_DEPENDS =		devel/py-async-timeout${MODPY_FLAVOR} \

TEST_DEPENDS =		databases/redis \
			devel/py-cachetools${MODPY_FLAVOR} \
			devel/py-invoke${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-uvloop${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			textproc/py-ujson${MODPY_FLAVOR}

.include <bsd.port.mk>
