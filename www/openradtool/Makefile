# $OpenBSD: Makefile,v 1.20 2020/08/30 18:11:15 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.10.2
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
