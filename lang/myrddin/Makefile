# $OpenBSD: Makefile,v 1.3 2017/03/04 21:09:04 jturner Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		systems language that is both powerful and fun to use

DISTNAME =		myrddin-0.1
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

NO_TEST =		Yes

.include <bsd.port.mk>
