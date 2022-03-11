COMMENT =		ODBC driver for SQLite3

V =			0.9998
DISTNAME =		sqliteodbc-${V}
PKGNAME =		sqlite3-odbc-${V}
CATEGORIES =		databases
HOMEPAGE =		http://www.ch-werner.de/sqliteodbc/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		iodbcinst m pthread sqlite3 z
LIB_DEPENDS =		databases/iodbc databases/sqlite3
AUTOCONF_VERSION =	2.63
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--with-libxml2=no
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib
	${INSTALL_DATA} \
		${WRKBUILD}/.libs/libsqlite3odbc-${V}.so \
		${PREFIX}/lib/libsqlite3odbc.so

.include <bsd.port.mk>
