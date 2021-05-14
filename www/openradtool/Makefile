# $OpenBSD: Makefile,v 1.44 2021/05/14 16:13:12 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.12.11
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
