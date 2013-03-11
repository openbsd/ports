# $OpenBSD: Makefile,v 1.5 2013/03/11 11:07:38 espie Exp $

COMMENT =	open source remake of old DOS game Sherlock

DISTNAME =	einstein-2.0
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	http://games.flowix.com/

# No license information in distfile. Homepage states that
# "you can download game for free under GPL license terms".
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c freetype m pthread stdc++ z SDL>=8 SDL_mixer>=3 SDL_ttf>=7

MASTER_SITES =	${HOMEPAGE}files/einstein/
EXTRACT_SUFX =	-src.tar.gz

LIB_DEPENDS =	devel/sdl	\
		devel/sdl-mixer	\
		devel/sdl-ttf

USE_GMAKE =	Yes

.include <bsd.port.mk>
