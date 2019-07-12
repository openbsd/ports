# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:26 sthen Exp $

PORTROACH_COMMENT =	0.13a is newer than 0.13
PORTROACH =		skipv:0.13

COMMENT =		fast-paced sidescrolling shoot-em-up

V =			0.13
DISTNAME =		vacuum-${V}a
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://apocalypse.rulez.org/vacuum

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+, see bin/vacuum.pl
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vacuum/}

BUILD_DEPENDS =		devel/p5-SDL
RUN_DEPENDS =		devel/p5-SDL

CONFIGURE_STYLE =	gnu

WRKDIST =		${WRKDIR}/vacuum-$V

.include <bsd.port.mk>
