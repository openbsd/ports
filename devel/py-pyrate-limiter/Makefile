COMMENT =		Python rate-limiter using Leaky-Bucket

# XXX: www/py-requests-ratelimiter needs < 3.0
MODPY_DISTV =		2.10.0

DISTNAME =		pyrate_limiter-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/vutran1710/PyrateLimiter

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

TEST_DEPENDS =		devel/py-test-asyncio

MODPY_PYTEST_ARGS =	--ignore tests/test_with_django.py \
			--ignore tests/test_02.py

.include <bsd.port.mk>
