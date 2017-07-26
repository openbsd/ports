# $OpenBSD: Makefile,v 1.9 2017/07/26 22:45:20 sthen Exp $

COMMENT =	open source remake of old DOS game Sherlock

DISTNAME =	einstein-2.0
REVISION =	1

CATEGORIES =	games

HOMEPAGE =	http://games.flowix.com/

# No license information in distfile. Homepage states that
# "you can download game for free under GPL license terms".
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c freetype m pthread ${COMPILER_LIBCXX} z SDL>=8 SDL_mixer>=3 SDL_ttf>=7

MASTER_SITES =	${HOMEPAGE}files/einstein/
EXTRACT_SUFX =	-src.tar.gz

LIB_DEPENDS =	devel/sdl	\
		devel/sdl-mixer	\
		devel/sdl-ttf

USE_GMAKE =	Yes

MAKE_FLAGS =	CXX="${CXX}"

.include <bsd.port.mk>
