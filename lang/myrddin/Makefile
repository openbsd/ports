# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:20 sthen Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		systems language that is both powerful and fun to use

DISTNAME =		myrddin-0.3.1
CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://myrlang.org/
MASTER_SITES =		https://myrlang.org/releases/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB	+= c

WRKDIST =		${WRKDIR}/mc

CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

TEST_TARGET =		check

# Remove hardcoded optimizations.
pre-configure:
	sed -i -e 's,-Werror,,g' -e 's,-O0,,g' ${WRKSRC}/mk/c.mk

pre-build:
	cd ${WRKDIST} && ${MAKE_PROGRAM} bootstrap

.include <bsd.port.mk>
