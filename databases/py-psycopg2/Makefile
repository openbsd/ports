# $OpenBSD: Makefile,v 1.36 2019/06/23 14:32:22 danj Exp $

COMMENT =		PostgreSQL database adapter for Python

MODPY_EGG_VERSION =	2.8.3
DISTNAME =		psycopg2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		databases

HOMEPAGE =		http://initd.org/projects/psycopg2

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pq pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		databases/postgresql
RUN_DEPENDS =		databases/postgresql
BUILD_DEPENDS =		textproc/py-pygments${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

FLAVORS =		python3
FLAVOR ?=

# To run the tests, create and start a test database as follows:
#     createdb psycopg2_test
# The test target will use the PSYCOPG2_TESTDB environment
# variable to connect to the database; see below for defaults. The
# user running the test test will be used to make the connection
# and should own the database:
#     echo "ALTER DATABASE psycopg2_test OWNER TO ${USER};" | \
#         psql -U postgres
TEST_IS_INTERACTIVE =	Yes
PSYCOPG2_TESTDB ?=	psycopg2_test
PSYCOPG2_TESTDB_USER ?=	"postgres"
PSYCOPG2_TESTDB_PASSWORD ?= "postgres"
USE_GMAKE =	Yes
TEST_ENV =	PSYCOPG2_TESTDB=${PSYCOPG2_TESTDB} \
		PSYCOPG2_TESTDB_USER=${PSYCOPG2_TESTDB_USER} \
		PSYCOPG2_TESTDB_PASSWORD=${PSYCOPG2_TESTDB_PASSWORD} \
		PYTHON_VERSION=${MODPY_VERSION} \
		PYTHON=python${MODPY_VERSION} \
		PYTHONPATH=./lib.openbsd-`uname -r`-${ARCH}-${MODPY_VERSION}

post-build:
	cd ${WRKSRC}/doc/src && PYTHONPATH=${WRKSRC}/lib.openbsd-`uname -r`-${ARCH}-${MODPY_VERSION} \
		${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX} -N . _build/html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}psycopg2
	cd ${WRKSRC}/doc/src/_build/html && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}psycopg2

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} gmake check

.include <bsd.port.mk>
