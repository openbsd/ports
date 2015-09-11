# $OpenBSD: Makefile,v 1.3 2015/09/11 19:28:37 kirby Exp $

COMMENT =		easy to use database connection pool Library

DISTNAME =		libzdb-3.1

SHARED_LIBS += 		zdb 1.0 # 11.0

CATEGORIES =		databases

HOMEPAGE =		http://www.tildeslash.com/libzdb/#

WANTLIB += pthread sqlite3

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.tildeslash.com/libzdb/dist/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-postgresql=no \
			--with-mysql=no

FLAVORS =	mysql postgresql
FLAVOR ?=

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=   databases/mariadb
WANTLIB += lib/mysql/mysqlclient
WANTLIB += crypto m ssl stdc++ z
CONFIGURE_ARGS+= --with-mysql
.endif

.if ${FLAVOR:Mpostgresql}
LIB_DEPENDS+=   databases/postgresql
WANTLIB += pq
WANTLIB+= crypto ssl
CONFIGURE_ARGS+= --with-postgresql
.endif

do-test:
	${WRKBUILD}/test/exception
	${WRKBUILD}/test/select
	${WRKBUILD}/test/unit
# Next test requires manual steps for SQL server configuration.
#	${WRKBUILD}/test/pool interactive test

.include <bsd.port.mk>
