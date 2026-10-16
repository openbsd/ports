COMMENT =		schedule Python code

MODPY_DISTV =		3.11.3
DISTNAME =		apscheduler-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		sysutils
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/agronholm/apscheduler
# https://apscheduler.readthedocs.io/en/3.x/versionhistory.html
HOMEPAGE =		https://apscheduler.readthedocs.io/en/3.x/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS +=		devel/py-tzlocal

TEST_DEPENDS =		net/py-anyio \
			devel/py-test-timeout \
			devel/py-tz \
			www/py-tornado
# some of the jobstore subtests pass if py-mongo, py-redis, py-sqlalchemy
# are present, but there are various (quite noisy) failures from unported
# modules: rethinkdb, etcd, zookeeper.
MODPY_PYTEST_IGNORE =	tests/test_jobstores.py

.include <bsd.port.mk>
