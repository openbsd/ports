# $OpenBSD: Makefile,v 1.7 2018/01/22 21:53:37 jturner Exp $

COMMENT =		yet another SQLite wrapper

DISTNAME =		ksql-0.2.0
CATEGORIES =		databases

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/ksql/
MASTER_SITES =		https://kristaps.bsd.lv/ksql/snapshots/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# not directly linked to this static lib, but depends on API
LIB_DEPENDS =		databases/sqlite3

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${WRKINST}${PREFIX}" CPPFLAGS="-I${LOCALBASE}/include"

ALL_TARGET =		libksql.a
FAKE_FLAGS =		DESTDIR=""

.include <bsd.port.mk>
