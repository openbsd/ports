# $OpenBSD: Makefile,v 1.3 2009/08/13 13:30:10 jasper Exp $

COMMENT =	Python DB-API 2.0 compliant interface to PostgreSQL

MODPY_EGG_VERSION = 2.5.1
DISTNAME =	pyPgSQL-${MODPY_EGG_VERSION}
PKGNAME =	py-pgsql-${MODPY_EGG_VERSION}p0
CATEGORIES =	databases

HOMEPAGE =	http://pypgsql.sourceforge.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@raveland.org>

# Python
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pypgsql/}

MODULES =	lang/python
PY_FLAVOR =	python${MODPY_VERSION}

BUILD_DEPENDS =		::databases/postgresql
RUN_DEPENDS =		:py-mxDateTime-*-${PY_FLAVOR}:devel/py-mxDateTime,${PY_FLAVOR}
LIB_DEPENDS =		pq.>=5::databases/postgresql
REGRESS_DEPENDS =	${RUN_DEPENDS}

# To run the tests, create and start a test database as follows:
#     createdb -E UNICODE pypgsql
#     createlang plpgsql pypgsql
# The regress target will use the PGUSER, PGPASSWORD and PGHOST
# environment variables to connect to the database; see below for
# defaults.
REGRESS_IS_INTERACTIVE = Yes

PGUSER ?=		regressuser
PGPASSWORD ?=		regresspass
PGHOST ?=		localhost
REGRESS_ENV =		"PGUSER=${PGUSER}" \
			"PGPASSWORD=${PGPASSWORD}" \
			"PGHOST=${PGHOST}"

do-regress: fake
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${REGRESS_ENV} ${MODPY_BIN} ./test/PgSQLTestCases.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pgsql
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-pgsql/
	${INSTALL_DATA} ${WRKSRC}/Announce ${PREFIX}/share/doc/py-pgsql/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/py-pgsql/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-pgsql
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-pgsql/

.include <bsd.port.mk>
