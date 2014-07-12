# $OpenBSD: Makefile,v 1.16 2014/07/12 07:19:56 zhuk Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-4.0.1
CATEGORIES=	databases devel

SHARED_LIBS =	pqxx                 2.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# 3-clause BSDL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m pq ssl stdc++

MASTER_SITES=	http://pqxx.org/download/software/libpqxx/

LIB_DEPENDS=	databases/postgresql

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=tools/splitconfig \
		tools/template2mak.py

# "Yes" breaks tests
SEPARATE_BUILD=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# Regression tests start up and use a real database
PGDATA =		${WRKDIR}/testdb
PGDATABASE =		pqxx-test
TEST_ENV =		PGDATABASE=${PGDATABASE} \
			PGHOST=${WRKDIR}
ALL_TEST_ENV =		${MAKE_ENV} ${TEST_ENV}

# Make sure that server is always stopped after starting
do-test:
	rm -Rf ${PGDATA}
	${LOCALBASE}/bin/initdb -D ${PGDATA} -A trust --locale=C
	${LOCALBASE}/bin/pg_ctl start -w -D ${PGDATA} -l ${WRKDIR}/pg.log \
		-o "-F -h '' -k ${WRKDIR}"
	${TEST_ENV} ${LOCALBASE}/bin/createdb ${PGDATABASE} || \
	    (${LOCALBASE}/bin/pg_ctl stop -D ${PGDATA} -m i; exit 1)
	cd ${WRKBUILD}; \
	    set +e; \
	    ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
	        -f ${MAKE_FILE} ${TEST_TARGET}; \
	    Q=$$?; \
	    ${LOCALBASE}/bin/pg_ctl stop -D ${PGDATA} -m i; \
	    exit $$Q

.include <bsd.port.mk>
