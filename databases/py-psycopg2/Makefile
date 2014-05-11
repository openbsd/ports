# $OpenBSD: Makefile,v 1.21 2014/05/11 05:17:22 rpointel Exp $

SHARED_ONLY =		Yes

COMMENT =		PostgreSQL database adapter for Python

MODPY_EGG_VERSION =	2.5.2
DISTNAME =		psycopg2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		databases

HOMEPAGE =		http://initd.org/projects/psycopg2

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/psycopg2/} \
		http://initd.org/psycopg/tarballs/PSYCOPG-2-4/

MODULES =	lang/python
LIB_DEPENDS =	databases/postgresql
WANTLIB +=	pq ${MODPY_WANTLIB}
RUN_DEPENDS =	databases/postgresql
TEST_DEPENDS = ${RUN_DEPENDS}

FLAVORS = 	python3
FLAVOR ?=

# To run the tests, create and start a test database as follows:
#     createdb psycopg2_test
# The test target will use the PSYCOPG2_TESTDB environment
# variable to connect to the database; see below for defaults. The
# user running the test test will be used to make the connection
# and should own the database:
#     echo "ALTER DATABASE psycopg2_test OWNER TO ${USER};" | \
#         psql -U postgres
TEST_IS_INTERACTIVE = Yes
PSYCOPG2_TESTDB ?=	psycopg2_test
PSYCOPG2_TESTDB_USER ?= "postgres"
PSYCOPG2_TESTDB_PASSWORD ?= "postgres"
USE_GMAKE =	Yes
TEST_ENV =	PSYCOPG2_TESTDB=${PSYCOPG2_TESTDB} \
		PSYCOPG2_TESTDB_USER=${PSYCOPG2_TESTDB_USER} \
		PSYCOPG2_TESTDB_PASSWORD=${PSYCOPG2_TESTDB_PASSWORD} \
		PYTHON_VERSION=${MODPY_VERSION} \
		PYTHON=python${MODPY_VERSION} \
		PYTHONPATH=./lib.openbsd-`uname -r`-${ARCH}-${MODPY_VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2
.if ${FLAVOR:Mpython3}
	mv ${PREFIX}/share/doc/py-psycopg2 ${PREFIX}/share/doc/${MODPY_PY_PREFIX}psycopg2
.endif
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}psycopg2
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}psycopg2
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}psycopg2/

do-test: fake
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} gmake check

.include <bsd.port.mk>
