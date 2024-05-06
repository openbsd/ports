COMMENT =	economic and military simulation game

GH_ACCOUNT = 	widelands
GH_PROJECT = 	widelands
GH_TAGNAME = 	v1.2
CATEGORIES =	games
REVISION =      0

HOMEPAGE =	https://www.widelands.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf c execinfo icudata icuuc intl m minizip png z

# c++17
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/asio \
		devel/gettext,-tools

LIB_DEPENDS =	archivers/minizip \
		devel/gettext,-runtime \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		graphics/png \
		graphics/glew \
		textproc/icu4c

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

MODULES =	devel/cmake \
		lang/lua \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS =	-DWL_INSTALL_DATADIR=${PREFIX}/share/widelands \
			-DWL_INSTALL_BASEDIR=${PREFIX}/share/widelands \
			-DWL_INSTALL_BINDIR=${PREFIX}/bin \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DGTK_UPDATE_ICON_CACHE=False \
			-Wno-dev

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME:S/-source//}

.include <bsd.port.mk>
