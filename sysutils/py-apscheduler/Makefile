COMMENT =		schedule Python code

MODPY_EGG_VERSION =	3.10.4
DISTNAME =		APScheduler-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		sysutils
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR}

# besides skipped tests, tests pass with running redis and mongod
# 2 errors io_loop caused by pytest-tornado missing in ports
TEST_DEPENDS = 		databases/py-mongo${MODPY_FLAVOR} \
			databases/py-redis${MODPY_FLAVOR} \
			databases/py-sqlalchemy${MODPY_FLAVOR} \
			devel/py-gevent${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

.include <bsd.port.mk>
