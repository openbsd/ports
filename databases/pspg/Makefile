COMMENT =	UNIX pager optimized for tabular data

DIST_TUPLE =	github okbob pspg 5.8.6 .

CATEGORIES =	databases

MAINTAINER =	Omar Polo <op@openbsd.org>

# BSD2
PERMIT_PACKAGE =	Yes

WANTLIB += c curses ereadline m panel pq

LIB_DEPENDS =		databases/postgresql,-main \
			devel/readline

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

AUTOCONF_VERSION =	2.71

NO_TEST =		Yes

CFLAGS +=		-I${LOCALBASE}/include/ereadline
LDFLAGS +=		-L${LOCALBASE}/lib/ -lereadline

.include <bsd.port.mk>
