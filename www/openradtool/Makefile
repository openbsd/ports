# $OpenBSD: Makefile,v 1.2 2019/07/02 22:55:41 jturner Exp $

COMMENT =		application source generator

DISTNAME =		openradtool-0.7.5
CATEGORIES =		www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://kristaps.bsd.lv/openradtool/
MASTER_SITES =		https://kristaps.bsd.lv/openradtool/snapshots/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c expat

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		"PREFIX=${PREFIX}"

RUN_DEPENDS =		databases/ksql \
			www/kcgi

NO_TEST =		Yes

.include <bsd.port.mk>
