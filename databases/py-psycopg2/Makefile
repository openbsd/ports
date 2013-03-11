# $OpenBSD: Makefile,v 1.20 2013/03/11 02:52:07 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		PostgreSQL database adapter for Python

MODPY_EGG_VERSION =	2.4.1
DISTNAME =		psycopg2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2
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

# To run the tests, create and start a test database as follows:
#     createdb psycopg2_test
# The test target will use the PSYCOPG2_TESTDB environment
# variable to connect to the database; see below for defaults. The
# user running the test test will be used to make the connection
# and should own the database:
#     echo "ALTER DATABASE psycopg2_test OWNER TO ${USER};" | \
#         psql -U postgres
TEST_IS_INTERACTIVE = Yes
PSYCOPG2_TESTDB? =	psycopg2_test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-psycopg2/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg2
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/py-psycopg2/

do-test: fake
	cd ${WRKSRC}/tests && ${SETENV} "PYTHONPATH=${WRKINST}${MODPY_SITEPKG}:../" \
	    ${MODPY_BIN} ./__init__.py

.include <bsd.port.mk>
