COMMENT =		schedule Python code

MODPY_DISTV =	3.10.4
DISTNAME =		APScheduler-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		sysutils
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
REVISION =		1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS +=		devel/py-six \
			devel/py-tz \
			devel/py-tzlocal

# besides skipped tests, tests pass with running redis and mongod
# 2 errors io_loop caused by pytest-tornado missing in ports
TEST_DEPENDS = 		databases/py-mongo \
			databases/py-redis \
			databases/py-sqlalchemy \
			devel/py-gevent \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-twisted \
			www/py-tornado

.include <bsd.port.mk>
