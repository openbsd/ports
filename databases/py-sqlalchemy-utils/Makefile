COMMENT=	sqlalchemy utility functions

MODPY_DISTV=	0.43.0
DISTNAME=	sqlalchemy_utils-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	databases

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	databases/py-sqlalchemy

# various tests try to connect to local databases
TEST_DEPENDS=	databases/py-psycopg2 \
		databases/py-pymysql \
		devel/py-dateutil \
		devel/py-flexmock \
		devel/py-tz

.include <bsd.port.mk>
