# $OpenBSD: Makefile,v 1.16 2020/06/24 16:33:50 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.8.16
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
