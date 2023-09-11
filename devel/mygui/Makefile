COMMENT =		library for creating GUIs for games and 3D applications

V = 			3.4.1
GH_ACCOUNT = 		MyGUI
GH_PROJECT = 		mygui
GH_TAGNAME = 		MyGUI${V}
DISTNAME = 		mygui-${V}

SHARED_LIBS +=		MyGUIEngine 		2.0

CATEGORIES =		devel x11

HOMEPAGE =		http://mygui.info/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += freetype m z ${COMPILER_LIBCXX}

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/ois

CXXFLAGS +=		-fPIC

CONFIGURE_ARGS += 	-DMYGUI_BUILD_DEMOS=false \
			-DMYGUI_BUILD_PLUGINS=false \
			-DMYGUI_BUILD_TOOLS=false \
			-DMYGUI_RENDERSYSTEM=4 \
			-DCMAKE_CXX_FLAGS="-I${X11BASE}/include" \
			-Wno-dev

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Common/Base/Ogre/BaseManager.cpp

.include <bsd.port.mk>
