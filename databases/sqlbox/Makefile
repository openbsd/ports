# $OpenBSD: Makefile,v 1.4 2020/03/12 03:04:08 jturner Exp $

COMMENT =		database access library

DISTNAME =		sqlbox-0.1.12
CATEGORIES =		databases

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/sqlbox/
MASTER_SITES =		https://kristaps.bsd.lv/sqlbox/snapshots/

# ISC
PERMIT_PACKAGE =	Yes

# not directly linked to this static lib, but depends on API
LIB_DEPENDS =		databases/sqlite3

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${PREFIX}"

TEST_TARGET =		regress

.include <bsd.port.mk>
