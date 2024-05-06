COMMENT=	Python interface to MySQL

MODPY_EGG_VERSION=	2.2.4
DISTNAME=	mysqlclient-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	databases

# https://github.com/PyMySQL/mysqlclient-python/
HOMEPAGE=	https://mysqlclient.readthedocs.io/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} mariadb pthread

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	databases/mariadb \
		lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

LIB_DEPENDS=	databases/mariadb

MODMARIADB_TEST_CMD= ${MODPY_TEST_TARGET}
TEST_ENV=	TESTDB=${WRKSRC}/tests/default.cnf
TEST_DEPENDS=	databases/mariadb \
		devel/py-mock${MODPY_FLAVOR}

pre-test:
	printf '[MySQLdb-tests]\nhost = localhost\nport = ${MODMARIADB_TEST_SOCKET}\ndatabase = test\ndefault-character-set = utf8mb4\n' > ${WRKSRC}/tests/default.cnf

.include <bsd.port.mk>
