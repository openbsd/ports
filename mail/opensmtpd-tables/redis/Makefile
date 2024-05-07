COMMENT =	Redis table for OpenSMTPD
TABLE =		redis
V =		1.0

WANTLIB += c hiredis

LIB_DEPENDS =	databases/libhiredis

CFLAGS +=	-I${LOCALBASE}/include/hiredis
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ARGS += CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
