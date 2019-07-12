# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:17 sthen Exp $

COMMENT =	open source remake of old DOS game Sherlock

DISTNAME =	einstein-2.0
REVISION =	5

CATEGORIES =	games

HOMEPAGE =	http://games.flowix.com/

# No license information in distfile. Homepage states that
# "you can download game for free under GPL license terms".
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} SDL SDL_mixer SDL_ttf c freetype
WANTLIB += m z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${HOMEPAGE}files/einstein/
EXTRACT_SUFX =	-src.tar.gz

LIB_DEPENDS =	devel/sdl	\
		devel/sdl-mixer	\
		devel/sdl-ttf

USE_GMAKE =	Yes

MAKE_FLAGS =	CXX="${CXX}"

.include <bsd.port.mk>
