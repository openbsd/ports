# $OpenBSD: Makefile,v 1.9 2009/04/11 13:45:06 martynas Exp $

SHARED_ONLY =		Yes

COMMENT =		PostgreSQL database adapter for Python

MODPY_EGG_VERSION =	2.0.9
DISTNAME =		psycopg2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		databases

HOMEPAGE =		http://initd.org/projects/psycopg2

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes

MASTER_SITES =	http://initd.org/pub/software/psycopg/

MODULES =	lang/python
LIB_DEPENDS =	pq::databases/postgresql
RUN_DEPENDS =	:postgresql-client-*:databases/postgresql
REGRESS_DEPENDS = ${RUN_DEPENDS}

# To run the tests, create and start a test database as follows:
#     createdb psycopg2_test
# The regress target will use the PSYCOPG2_TESTDB environment
# variable to connect to the database; see below for defaults. The
# user running the regress test will be used to make the connection
# and should own the database:
#     echo "ALTER DATABASE psycopg2_test OWNER TO ${USER};" | \
#         psql -U postgres
REGRESS_IS_INTERACTIVE = Yes
PSYCOPG2_TESTDB? =	psycopg2_test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-psycopg2/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg2
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/py-psycopg2/

do-regress: fake
	cd ${WRKSRC}/tests && ${SETENV} "PYTHONPATH=${WRKINST}${MODPY_SITEPKG}:../" \
	    ${MODPY_BIN} ./__init__.py

.include <bsd.port.mk>
