COMMENT =	sqlalchemy utility functions

MODPY_DISTV =	0.42.0
DISTNAME =	sqlalchemy_utils-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	databases

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		databases/py-sqlalchemy

TEST_DEPENDS =		databases/py-psycopg2 \
			databases/py-pymysql \
			devel/py-dateutil \
			devel/py-flexmock \
			devel/py-tz

.include <bsd.port.mk>
