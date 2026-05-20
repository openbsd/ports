COMMENT =		collection of cache libraries

MODPY_DISTV =		0.14.0
DISTNAME =		cachelib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

# Needs pkg_add mongodb and rcctl start mongod
# to make the mongodb tests work
# 157 passed, 66 skipped, 11 warnings
TEST_DEPENDS =		devel/py-test-xprocess \
			databases/py-mongo
MODPY_PYTEST_ARGS =	--ignore tests/test_dynamodb_cache.py

.include <bsd.port.mk>
