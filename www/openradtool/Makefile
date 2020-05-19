# $OpenBSD: Makefile,v 1.14 2020/05/19 23:30:10 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.8.14
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

NO_TEST =		Yes

.include <bsd.port.mk>
