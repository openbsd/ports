# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:02 sthen Exp $

COMMENT =		ODBC driver for SQLite3

V =			0.9996
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
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-libxml2=no
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib
	${INSTALL_DATA} \
		${WRKBUILD}/.libs/libsqlite3odbc-${V}.so \
		${PREFIX}/lib/libsqlite3odbc.so

.include <bsd.port.mk>
