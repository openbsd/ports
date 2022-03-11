COMMENT =	economic and military simulation game

GH_ACCOUNT = 	widelands
GH_PROJECT = 	widelands
GH_TAGNAME = 	v1.0

CATEGORIES =	games

HOMEPAGE =	https://www.widelands.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf boost_unit_test_framework-mt boost_system-mt
WANTLIB += c curl execinfo iconv icudata icuuc intl m png z

# c++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/boost \
		devel/gettext,-runtime \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		graphics/png \
		graphics/glew \
		net/curl \
		textproc/icu4c
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

MODULES =	devel/cmake \
		lang/lua \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS =	-DWL_INSTALL_DATADIR=${PREFIX}/share/widelands \
			-DWL_INSTALL_BASEDIR=${PREFIX}/share/widelands \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DGTK_UPDATE_ICON_CACHE=False \
			-Wno-dev

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -lGL -lexecinfo -lintl -liconv \
			-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME:S/-source//}

.include <bsd.port.mk>
