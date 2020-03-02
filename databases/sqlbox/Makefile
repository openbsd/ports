# $OpenBSD: Makefile,v 1.3 2020/03/02 14:51:00 jturner Exp $

COMMENT =		database access library

DISTNAME =		sqlbox-0.1.11
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
