# Helps testing MySQL/MariaDB-based software, no B/L/R-DEPS here.

MODMARIADB_TEST_CMD ?= \
	${MAKE_PROGRAM} ${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

MODMARIADB_TEST_DBNAME ?=
MODMARIADB_TEST_SOCKET =	${WRKDIR}/mariadb.sock
_MODMARIADB_TEST_DATA_DIR =	${WRKDIR}/testdb-mariadb

MODMARIADB_SERVER_ARGS = \
	--no-defaults \
	--datadir=${_MODMARIADB_TEST_DATA_DIR} \
	--skip-grant-tables \
	--skip-networking \
	--socket=${MODMARIADB_TEST_SOCKET}

MODMARIADB_ADMIN_ARGS = \
	--no-defaults \
	--host=localhost \
	--protocol=socket \
	--socket=${MODMARIADB_TEST_SOCKET}

MODMARIADB_CLIENT_ARGS =	${MODMARIADB_ADMIN_ARGS}

.if !empty(MODMARIADB_TEST_DBNAME)
MODMARIADB_CLIENT_ARGS +=	--database=${MODMARIADB_TEST_DBNAME}
.endif

TEST_DEPENDS +=		databases/mariadb,-server
TEST_ENV += \
	MYSQL_HOME=${WRKDIR} \
	MYSQL_HOST=localhost \
	MYSQL_UNIX_PORT=${MODMARIADB_TEST_SOCKET}

MODMARIADB_TEST_TARGET = \
	rm -Rf ${_MODMARIADB_TEST_DATA_DIR}; \
	export ${ALL_TEST_ENV}; \
	${LOCALBASE}/bin/mariadb-install-db \
		--skip-name-resolve \
		${MODMARIADB_SERVER_ARGS}; \
	${LOCALBASE}/libexec/mariadbd \
		${MODMARIADB_SERVER_ARGS} & \
	started=false; \
	for i in $$(jot 10); do \
		sleep 1; \
		if mariadb-admin ${MODMARIADB_ADMIN_ARGS} \
		    ping >/dev/null 2>&1; then \
			started=true; \
			break; \
		fi; \
	done; \
	$$started || { echo "mariadbd didn't start" >&2; kill $$!; exit 1; };
.if !empty(MODMARIADB_TEST_DBNAME)
MODMARIADB_TEST_TARGET += \
	${LOCALBASE}/bin/mariadb-admin ${MODMARIADB_ADMIN_ARGS} \
	    create ${MODMARIADB_TEST_DBNAME} || \
	    { kill $$!; exit 1; };
.endif
MODMARIADB_TEST_TARGET += \
	set +e; \
	cd ${WRKBUILD}; \
	( ${MODMARIADB_TEST_CMD} ); \
	Q=$$?; \
	kill $$!; \
	exit $$Q

.if !target(do-test)
do-test:
	${MODMARIADB_TEST_TARGET}
.endif
