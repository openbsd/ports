COMMENT = 	lightweight connection pooler for PostgreSQL

V = 		1.25.1
DISTNAME = 	pgbouncer-${V}
REVISION =	0

CATEGORIES = 	databases

HOMEPAGE = 	https://www.pgbouncer.org/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB = 	c event_core event_extra crypto ssl

SITES = 	https://pgbouncer.github.io/downloads/files/${V}/

BUILD_DEPENDS =	textproc/pandoc
LIB_DEPENDS =	devel/libevent2

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS = 	--without-cares
MAKE_FLAGS +=		V=1

USE_GMAKE = 		Yes
# needs psycopg1
NO_TEST =	Yes

.include <bsd.port.mk>
