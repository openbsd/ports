# $OpenBSD: Makefile,v 1.4 2017/06/29 13:41:50 jturner Exp $

COMMENT =		yet another SQLite wrapper

DISTNAME =		ksql-0.1.2
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

NO_TEST =		Yes

.include <bsd.port.mk>
