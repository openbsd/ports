# $OpenBSD: Makefile,v 1.52 2021/07/28 17:04:37 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.13.8
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/openradtool/
MASTER_SITES =		https://kristaps.bsd.lv/openradtool/snapshots/

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
