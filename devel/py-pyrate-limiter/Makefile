COMMENT =		Python rate-limiter using Leaky-Bucket

# check compat with www/py-requests-ratelimiter
MODPY_DISTV =		4.0.2
DISTNAME =		pyrate_limiter-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/vutran1710/PyrateLimiter

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		hatchling
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-uv-dynamic-versioning
TEST_DEPENDS =		devel/py-test-asyncio

MODPY_PYTEST_ARGS =	--ignore tests/test_with_django.py \
			--ignore tests/test_02.py
# needs psycopg-pool
MODPY_PYTEST_ARGS +=	-k 'not postgres'
# test setup wants pytest-retry ("Unknown config option: cumulative_timing",
# etc), but runs ok without.

.include <bsd.port.mk>
