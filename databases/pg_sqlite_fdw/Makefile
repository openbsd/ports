COMMENT =		PostgreSQL Foreign Data Wrapper for SQLite

GH_ACCOUNT =		pgspider
GH_PROJECT =		sqlite_fdw
GH_TAGNAME =		v2.1.1

PKGNAME =		pg_${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/pgspider/sqlite_fdw

# PostgreSQL
PERMIT_PACKAGE =	Yes

WANTLIB =		c sqlite3

BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
LIB_DEPENDS =		databases/sqlite3

USE_GMAKE =		Yes

MAKE_FLAGS =		USE_PGXS=1

.include <bsd.port.mk>
