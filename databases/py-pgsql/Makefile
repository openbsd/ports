# $OpenBSD: Makefile,v 1.14 2015/04/21 18:40:20 sthen Exp $

COMMENT =	Python DB-API 2.0 compliant interface to PostgreSQL

MODPY_EGG_VERSION = 2.5.1
DISTNAME =	pyPgSQL-${MODPY_EGG_VERSION}
PKGNAME =	py-pgsql-${MODPY_EGG_VERSION}
REVISION =	7
CATEGORIES =	databases

HOMEPAGE =	http://pypgsql.sourceforge.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Python
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pq>=5 pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pypgsql/}

MODULES =	lang/python

BUILD_DEPENDS =		databases/postgresql
RUN_DEPENDS =		devel/py-mxDateTime
LIB_DEPENDS =		databases/postgresql
TEST_DEPENDS =	${RUN_DEPENDS}

# To run the tests, create and start a test database as follows:
#     createdb -E UNICODE pypgsql
#     createlang plpgsql pypgsql
# The test target will use the PGUSER, PGPASSWORD and PGHOST
# environment variables to connect to the database; see below for
# defaults.
TEST_IS_INTERACTIVE = Yes

PGUSER ?=		regressuser
PGPASSWORD ?=		regresspass
PGHOST ?=		localhost
TEST_ENV =		"PGUSER=${PGUSER}" \
			"PGPASSWORD=${PGPASSWORD}" \
			"PGHOST=${PGHOST}"

do-test: fake
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${TEST_ENV} ${MODPY_BIN} ./test/PgSQLTestCases.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pgsql
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-pgsql/
	${INSTALL_DATA} ${WRKSRC}/Announce ${PREFIX}/share/doc/py-pgsql/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/py-pgsql/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-pgsql
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-pgsql/

.include <bsd.port.mk>
