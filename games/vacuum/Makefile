# $OpenBSD: Makefile,v 1.1.1.1 2015/12/07 05:46:16 bentley Exp $

COMMENT =		fast-paced sidescrolling shoot-em-up

V =			0.13
DISTNAME =		vacuum-${V}a

CATEGORIES =		games

HOMEPAGE =		http://apocalypse.rulez.org/vacuum

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# GPLv2+, see bin/vacuum.pl
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vacuum/}

BUILD_DEPENDS =		devel/p5-SDL
RUN_DEPENDS =		devel/p5-SDL

CONFIGURE_STYLE =	gnu

WRKDIST =		${WRKDIR}/vacuum-$V

.include <bsd.port.mk>
