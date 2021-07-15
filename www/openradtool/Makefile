# $OpenBSD: Makefile,v 1.50 2021/07/15 14:57:33 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.13.5
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
