COMMENT =	cross-platform interactive fiction player

GH_ACCOUNT =	garglk
GH_PROJECT =	garglk
GH_TAGNAME =	2022.1
EPOCH =		0

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

# Gargoyle is a frontend for various other included programs under differing
# licenses; mostly MIT or similar but see various license files in distribution
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets SDL2 SDL2_mixer
WANTLIB += c fontconfig freetype glib-2.0 intl jpeg m png speechd z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	audio/speech-dispatcher \
		devel/sdl2-mixer \
		graphics/jpeg

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gargoyle
	${INSTALL_DATA} ${WRKSRC}/garglk/garglk.ini \
	    ${PREFIX}/share/examples/gargoyle

.include <bsd.port.mk>
