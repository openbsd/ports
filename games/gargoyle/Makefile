COMMENT =	cross-platform interactive fiction player

GH_ACCOUNT =	garglk
GH_PROJECT =	garglk
GH_TAGNAME =	2026.1.1
EPOCH =		0

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

# Gargoyle is a frontend for various other included programs under differing
# licenses; mostly MIT or similar but see various license files in distribution
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL fontconfig freetype
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += SDL2 SDL2_mixer
WANTLIB += c glib-2.0 fmt intl m png speechd turbojpeg z

# ports-gcc fails:
# ld: error: undefined symbol: std::filesystem::__cxx11::path::_M_split_cmpts()
#COMPILER =	base-clang ports-gcc
COMPILER =	base-clang

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	audio/speech-dispatcher \
		devel/fmt \
		devel/sdl2-mixer \
		graphics/jpeg

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gargoyle
	${INSTALL_DATA} ${WRKSRC}/garglk/garglk.ini \
	    ${PREFIX}/share/examples/gargoyle

#MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
