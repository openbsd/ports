COMMENT =	minimal remote system monitor

DISTNAME =	slant-0.0.24

CATEGORIES =	sysutils

HOMEPAGE =	https://kristaps.bsd.lv/slant/

MAINTAINER =	Kristaps Dzonsons <kristaps@bsd.lv>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c curses sqlite3 tls z

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/sqlbox \
		www/openradtool>=0.8.5

LIB_DEPENDS = databases/sqlite3

MASTER_SITES =	https://kristaps.bsd.lv/slant/snapshots/

SUBST_VARS = VARBASE

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS += 	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
