COMMENT =	loadable dynamic extension to both SQLite and SpatiaLite
PROJECT =	virtualpg
DISTNAME =	${PROJECT}-2.0.1
SHARED_LIBS +=  virtualpg 0.0 # 1.1

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	databases/sqlite3 \
		databases/postgresql
WANTLIB += crypto m pq pthread sqlite3 ssl z

.include <bsd.port.mk>
