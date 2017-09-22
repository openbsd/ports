# $OpenBSD: Makefile,v 1.5 2017/09/22 15:09:29 jturner Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		systems language that is both powerful and fun to use

DISTNAME =		myrddin-0.2.0
CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://myrlang.org/
MASTER_SITES =		https://myrlang.org/releases/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	+= c

WRKDIST =		${WRKDIR}/mc

CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

TEST_TARGET =		check

.include <bsd.port.mk>
