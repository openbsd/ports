COMMENT =	MySQL table for OpenSMTPD
TABLE =		mysql
V =		1.1

WANTLIB += c mariadb

LIB_DEPENDS =	databases/mariadb,-main

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ARGS += CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
