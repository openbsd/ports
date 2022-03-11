COMMENT =	puzzle game with similar gameplay to Tetris Attack
CATEGORIES =	games x11

GH_ACCOUNT =	dorkster
GH_PROJECT =	freeblocks
GH_TAGNAME =	v0.5
REVISION =	3

HOMEPAGE =	https://github.com/dorkster/freeblocks

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DDATADIR="${PREFIX}/share/freeblocks"

NO_TEST =	Yes

.include <bsd.port.mk>
