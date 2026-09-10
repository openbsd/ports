COMMENT=	PostgreSQL database adapter for Python

MODPY_DISTV=	2.9.13
DISTNAME=	psycopg2-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases

HOMEPAGE=	https://www.psycopg.org/

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	pq

MODULES=	lang/python \
		databases/postgresql

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST=	No

LIB_DEPENDS=	databases/postgresql
RUN_DEPENDS=	databases/postgresql
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

MODPOSTGRESQL_TEST_DBNAME=	psycopg2_test
PSYCOPG2_TESTDB_USER ?=	"postgres"
PSYCOPG2_TESTDB_PASSWORD ?= "postgres"

TEST_DEPENDS=	devel/gmake
TEST_ENV=	PSYCOPG2_TESTDB=${MODPOSTGRESQL_TEST_DBNAME} \
		PSYCOPG2_TESTDB_USER=postgres \
		PYTHON_VERSION=${MODPY_VERSION}

MODPOSTGRESQL_TEST_CMD= gmake check \
	BUILD_DIR=${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

.include <bsd.port.mk>
