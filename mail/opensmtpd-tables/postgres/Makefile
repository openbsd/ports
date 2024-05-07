COMMENT =	PostgreSQL table for OpenSMTPD
TABLE =		postgres
V =		1.0

WANTLIB += c pq

LIB_DEPENDS =	databases/postgresql,-main

CFLAGS +=	-I${LOCALBASE}/include/postgresql
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ARGS += CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
