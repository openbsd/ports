COMMENT =		roguelike game by Brian Walker with X11 support
COMMENT-no_x11 =	roguelike game by Brian Walker

GH_ACCOUNT =	tmewett
GH_PROJECT =	BrogueCE
GH_TAGNAME =	v1.13

PKGNAME =	brogue-${GH_TAGNAME:S/v//}

CATEGORIES =	games

HOMEPAGE =	https://sites.google.com/site/broguegame/

MAINTAINER =	Anton Konyahin <me@konyahin.xyz>

# Code: AGPLv3+
# Assets: CC BY-SA 4.0
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

FLAVORS =	no_x11
FLAVOR ?=

WANTLIB =	c m

MAKE_FLAGS +=	DATADIR="${PREFIX}/share/brogue" \
		RELEASE=YES

.if ${FLAVOR:Mno_x11}
WANTLIB += curses
MAKE_FLAGS +=	TERMINAL=YES GRAPHICS=NO
.else
WANTLIB += SDL2 SDL2_image
LIB_DEPENDS +=	devel/sdl2 devel/sdl2-image
.endif

USE_GMAKE =	Yes
NO_TEST =	Yes

ALL_TARGET =	bin/brogue

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/brogue ${PREFIX}/libexec/
	${SUBST_PROGRAM} ${FILESDIR}/brogue ${PREFIX}/bin/brogue
	${INSTALL_DATA_DIR} ${PREFIX}/share/brogue/assets
	${INSTALL_DATA} ${WRKDIST}/bin/assets/tiles.png \
		${PREFIX}/share/brogue/assets/tiles.png
	${INSTALL_DATA} ${WRKDIST}/bin/assets/tiles.bin \
		${PREFIX}/share/brogue/assets/tiles.bin
	${INSTALL_DATA} ${WRKDIST}/bin/assets/icon.png \
		${PREFIX}/share/brogue/assets/icon.png

.include <bsd.port.mk>
