COMMENT =		marble game inspired by Marble Madness

GH_PROJECT =		trackballs
GH_ACCOUNT =		trackballs
GH_TAGNAME =		v1.3.4

CATEGORIES =		games

# source GPLv2+
# music GPLv2+ or Ethymos Free Music Licence
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf c gc guile-3.0 intl m z

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			lang/guile3
MODULES =		devel/cmake
BUILD_DEPENDS =		devel/gettext,-tools

CONFIGURE_ARGS +=	-DTRACKBALLS_HIGHSCORES_DIR='~' \
			-DTRACKBALLS_MAN_DIR=${PREFIX}/man

.include <bsd.port.mk>
