# $OpenBSD: Makefile,v 1.1.1.1 2009/04/03 17:56:41 landry Exp $

COMMENT =	open source remake of old DOS game Sherlock

DISTNAME =	einstein-2.0

CATEGORIES =	games

HOMEPAGE =	http://games.flowix.com/

# No license information in distfile. Homepage states that
# "you can download game for free under GPL license terms".
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c freetype m pthread stdc++ z

MASTER_SITES =	${HOMEPAGE}files/einstein/
EXTRACT_SUFX =	-src.tar.gz

LIB_DEPENDS =	SDL.>=8::devel/sdl	\
		SDL_mixer.>=3::devel/sdl-mixer	\
		SDL_ttf.>=7::devel/sdl-ttf

USE_GMAKE =	Yes

.include <bsd.port.mk>
