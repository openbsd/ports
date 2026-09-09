COMMENT =		application source generator

DISTNAME =		openradtool-0.14.1
REVISION =		0
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/openradtool/
SITES =			${HOMEPAGE}snapshots/

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c expat

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		"PREFIX=${PREFIX}"

RUN_DEPENDS =		databases/sqlbox \
			www/kcgi

TEST_DEPENDS =		databases/sqlite3
TEST_TARGET =		regress

.include <bsd.port.mk>
