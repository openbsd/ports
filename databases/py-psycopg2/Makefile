COMMENT=	PostgreSQL database adapter for Python

MODPY_EGG_VERSION=	2.9.9
DISTNAME=	psycopg2-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases
REVISION=	0

HOMEPAGE=	https://www.psycopg.org/

# LGPLv3
PERMIT_PACKAGE=Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pq pthread

MODULES=	lang/python \
		databases/postgresql

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST=	No

LIB_DEPENDS=	databases/postgresql
RUN_DEPENDS=	databases/postgresql
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

FLAVORS=	python3
FLAVOR=		python3

# To run the tests, create and start a test database as follows:
#     createdb psycopg2_test
# The test target will use the PSYCOPG2_TESTDB environment
# variable to connect to the database; see below for defaults. The
# user running the test test will be used to make the connection
# and should own the database:
#     echo "ALTER DATABASE psycopg2_test OWNER TO ${USER};" | \
#         psql -U postgres
MODPOSTGRESQL_TEST_DBNAME=	psycopg2_test
PSYCOPG2_TESTDB_USER ?=	"postgres"
PSYCOPG2_TESTDB_PASSWORD ?= "postgres"
#		PSYCOPG2_TESTDB_PASSWORD=postgres 

TEST_DEPENDS=	devel/gmake
TEST_ENV=	PSYCOPG2_TESTDB=${MODPOSTGRESQL_TEST_DBNAME} \
		PSYCOPG2_TESTDB_USER=postgres \
		PYTHON_VERSION=${MODPY_VERSION}

MODPOSTGRESQL_TEST_CMD= gmake check \
	BUILD_DIR=${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

.include <bsd.port.mk>
