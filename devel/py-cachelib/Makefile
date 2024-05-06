COMMENT =		collection of cache libraries

MODPY_EGG_VERSION =	0.10.2
DISTNAME =		cachelib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
REVISION =		0

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-test-xprocess${MODPY_FLAVOR}
MODPY_PYTEST_ARGS =	--ignore tests/test_dynamodb_cache.py

.include <bsd.port.mk>
