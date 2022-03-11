# Helps testing PostgreSQL-based software, no B/L/R-DEPS here.

MODPOSTGRESQL_TEST_CMD ?= \
	${MAKE_PROGRAM} ${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

MODPOSTGRESQL_TEST_PGHOST ?=	${WRKDIR}
_MODPOSTGRESQL_TEST_PGDATA =	${WRKDIR}/testdb-pg

TEST_DEPENDS +=		databases/postgresql,-server
TEST_ENV +=		PGDATA=${_MODPOSTGRESQL_TEST_PGDATA} \
			PGHOST=${MODPOSTGRESQL_TEST_PGHOST}
.ifdef MODPOSTGRESQL_TEST_DBNAME
TEST_ENV +=		PGDATABASE=${MODPOSTGRESQL_TEST_DBNAME}
.endif

MODPOSTGRESQL_TEST_TARGET = \
	rm -Rf ${_MODPOSTGRESQL_TEST_PGDATA}; \
	export ${ALL_TEST_ENV}; \
	${LOCALBASE}/bin/initdb -D ${_MODPOSTGRESQL_TEST_PGDATA} \
	    -A trust --locale=C -E UTF8 --nosync; \
	${LOCALBASE}/bin/pg_ctl start -w -D ${_MODPOSTGRESQL_TEST_PGDATA} \
	    -l ${WRKDIR}/pg-test.log \
	    -o "-F -h '' -k ${MODPOSTGRESQL_TEST_PGHOST}"; \
	${LOCALBASE}/bin/createuser -s postgres || \
	    (${LOCALBASE}/bin/pg_ctl stop -D ${_MODPOSTGRESQL_TEST_PGDATA} \
	     -m i && exit 1); \
	export PGUSER=postgres;
.ifdef MODPOSTGRESQL_TEST_DBNAME
MODPOSTGRESQL_TEST_TARGET += \
	${LOCALBASE}/bin/createdb ${MODPOSTGRESQL_TEST_DBNAME} || \
	    (${LOCALBASE}/bin/pg_ctl stop -D ${_MODPOSTGRESQL_TEST_PGDATA} \
	     -m i && exit 1);
.endif
MODPOSTGRESQL_TEST_TARGET += \
	set +e; \
	cd ${WRKBUILD}; \
	( ${MODPOSTGRESQL_TEST_CMD} ); \
	Q=$$?; \
	${LOCALBASE}/bin/pg_ctl stop -D ${_MODPOSTGRESQL_TEST_PGDATA} -m i; \
	exit $$Q

.if !target(do-test)
do-test:
	${MODPOSTGRESQL_TEST_TARGET}
.endif
