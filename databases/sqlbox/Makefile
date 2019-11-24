# $OpenBSD: Makefile,v 1.1.1.1 2019/11/24 04:54:04 jturner Exp $

COMMENT =		database access library

DISTNAME =		sqlbox-0.1.7
CATEGORIES =		databases

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/sqlbox/
MASTER_SITES =		https://kristaps.bsd.lv/sqlbox/snapshots/

# ISC
PERMIT_PACKAGE =	Yes

# not directly linked to this static lib, but depends on API
LIB_DEPENDS =		databases/sqlite3

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${PREFIX}" \
			LDADD="-lpthread" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

TEST_TARGET =		regress

.include <bsd.port.mk>
