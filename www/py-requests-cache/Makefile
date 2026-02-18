COMMENT =		transparent persistent cache for the py-requests library
MODPY_DISTV =		1.2.1
DISTNAME =		requests_cache-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
CATEGORIES =		www

HOMEPAGE =		https://github.com/reclosedev/requests-cache

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		www/py-requests \
			www/py-urllib3 \
			devel/py-attrs \
			devel/py-cattrs \
			sysutils/py-platformdirs \
			www/py-url-normalize

# tests require network
TEST_DEPENDS =		databases/py-mongo \
			databases/sqlite3 \
			devel/py-cattrs \
			devel/py-mock \
			devel/py-rich \
			devel/py-tenacity \
			devel/py-test-httpbin \
			devel/py-time-machine \
			devel/py-timeout-decorator \
			www/py-responses \
			www/py-url-normalize

PORTHOME =		${WRKDIR}

# move from default of commonly used localhost:8080 to avoid conflicts
TEST_ENV =		HTTPBIN_URL=http://localhost:6823/ \
			USE_PYTEST_HTTPBIN=true

# backends need setup (and boto3, for dynamodb)
MODPY_PYTEST_ARGS =	--ignore tests/integration/test_dynamodb.py \
			--ignore tests/integration/test_mongodb.py \
			--ignore tests/integration/test_redis.py

.include <bsd.port.mk>
