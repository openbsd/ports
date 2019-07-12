# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:53 sthen Exp $

COMMENT =		easy to use database connection pool Library

DISTNAME =		libzdb-3.1
REVISION =		2

SHARED_LIBS += 		zdb 1.0 # 11.0

CATEGORIES =		databases

HOMEPAGE =		http://www.tildeslash.com/libzdb/#

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread sqlite3 z

MASTER_SITES =		http://www.tildeslash.com/libzdb/dist/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS +=	--with-postgresql=no \
			--with-mysql=no

FLAVORS =	mysql postgresql
FLAVOR ?=

LIB_DEPENDS+=   databases/sqlite3

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=   databases/mariadb
WANTLIB += lib/mysql/mysqlclient
WANTLIB += crypto m ssl ${COMPILER_LIBCXX}
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
