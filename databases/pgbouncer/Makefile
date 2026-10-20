COMMENT =	lightweight connection pooler for PostgreSQL

V =		1.26.1
REVISION =	0
DISTNAME =	pgbouncer-${V}

CATEGORIES =	databases

HOMEPAGE =	https://www.pgbouncer.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c event_core event_extra crypto ssl

SITES =		https://pgbouncer.github.io/downloads/files/${V}/

BUILD_DEPENDS =	textproc/lowdown \
		lang/python/3
LIB_DEPENDS =	devel/libevent2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-cares
CONFIGURE_ENV =		PANDOC=lowdown
MAKE_FLAGS +=		V=1

USE_GMAKE =		Yes
# needs psycopg1
NO_TEST =	Yes

.include <bsd.port.mk>
