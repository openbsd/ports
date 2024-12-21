COMMENT =		collection of cache libraries

MODPY_DISTV =	0.10.2
DISTNAME =		cachelib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
REVISION =		1

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-test-xprocess
MODPY_PYTEST_ARGS =	--ignore tests/test_dynamodb_cache.py

.include <bsd.port.mk>
