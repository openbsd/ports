# $OpenBSD: Makefile,v 1.26 2020/12/23 01:01:06 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.11.7
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

TEST_TARGET =		regress

.include <bsd.port.mk>
