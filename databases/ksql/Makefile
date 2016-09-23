# $OpenBSD: Makefile,v 1.3 2016/09/23 09:16:53 sthen Exp $

COMMENT =		yet another SQLite wrapper

DISTNAME =		ksql-0.0.9
REVISION =		0
CATEGORIES =		databases

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/ksql/
MASTER_SITES =		https://kristaps.bsd.lv/ksql/snapshots/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# not directly linked to this static lib, but depends on API
LIB_DEPENDS =		databases/sqlite3
WANTLIB =		sqlite3

NO_CONFIGURE =		Yes

ALL_TARGET =		libksql.a

MAKE_FLAGS =		CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
