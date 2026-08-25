COMMENT =		collection of cache libraries

MODPY_DISTV =		0.17.0
DISTNAME =		cachelib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

# Needs pkg_add mongodb redis memcached and those daemons started
# to make the related tests work
# 457 passed, 80 skipped
TEST_DEPENDS =		devel/py-test-xprocess \
			databases/py-mongo \
			databases/py-redis \
			misc/py-memcached
# dynamodb cache needs boto3 and a running dynamodb, valkey
# we don't have in ports
MODPY_PYTEST_ARGS =	--ignore tests/test_dynamodb_cache.py \
			--ignore tests/test_valkey_cache.py

.include <bsd.port.mk>
