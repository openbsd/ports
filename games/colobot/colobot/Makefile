COMMENT =		programming-focused real-time strategy game

DISTNAME =		colobot-$V
REVISION =		0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW SDL2 SDL2_image SDL2_ttf boost_filesystem-mt
WANTLIB += boost_regex-mt boost_system-mt c intl m openal physfs png
WANTLIB += pthread sndfile z boost_atomic-mt

GH_PROJECT =		colobot

# c++11
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake
BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		audio/libsndfile \
			audio/openal \
			devel/boost \
			devel/gettext,-runtime \
			devel/physfs \
			devel/sdl2-image \
			devel/sdl2-ttf \
			graphics/glew
RUN_DEPENDS =		games/colobot/data \
			games/colobot/music

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_BIN_DIR="${PREFIX}/bin"

CFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib -lintl

NO_TEST =		Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
