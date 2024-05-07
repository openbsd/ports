COMMENT =	SQLite3 table for OpenSMTPD
TABLE =		sqlite
V =		1.0

WANTLIB += c sqlite3

LIB_DEPENDS =	databases/sqlite3

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ARGS += CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
