COMMENT =		3D real-time strategy game
GH_PROJECT =		megaglest-source
PKGNAME =		megaglest-${GH_TAGNAME}
REVISION =		6

WANTLIB += GL GLEW GLU ICE SDL2 SM X11 Xext c crypto curl fontconfig
WANTLIB += freetype fribidi ftgl glib-2.0 intl ircclient jpeg
WANTLIB += m miniupnpc nghttp2 openal png ssl vlc vlccore vorbisfile
WANTLIB += wx_baseu-3.0 wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0 z
WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/lua

BUILD_DEPENDS =		devel/help2man
RUN_DEPENDS =		games/megaglest/data
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/glew \
			graphics/ftgl \
			net/curl \
			net/libircclient \
			net/miniupnp/miniupnpc \
			x11/vlc,-main \
			x11/wxWidgets>=3.0.4

CONFIGURE_ARGS = 	-DBUILD_MEGAGLEST_MODEL_IMPORT_EXPORT_TOOLS=0 \
			-DFORCE_LUA_VERSION=${MODLUA_VERSION} \
			-DMEGAGLEST_MANPAGE_INSTALL_PATH="${LOCALBASE}/man/man6" \
			-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include ${CXXFLAGS}"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/mk/cmake/Modules/FindLUA.cmake \
		${WRKSRC}/source/shared_lib/CMakeLists.txt

.include <bsd.port.mk>
