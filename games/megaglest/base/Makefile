COMMENT =		3D real-time strategy game
GH_PROJECT =		megaglest-source
PKGNAME =		megaglest-${GH_TAGNAME}
REVISION =		7

MASTER_SITES0 =		https://github.com/MegaGlest/megaglest-source/commit/
PATCHFILES =		789e1cdf.patch:0 \
			5801b1fa.patch:0 \
			412b37d0.patch:0 \
			e09ba53c.patch:0
PATCH_DIST_STRIP =	-p1

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE SDL2 SM X11 Xext
WANTLIB += c crypto curl fontconfig freetype ftgl ircclient jpeg
WANTLIB += lua5.1 m miniupnpc openal png ssl vlc vlccore vorbisfile
WANTLIB += wx_baseu-3.2 wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2

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
			-DMEGAGLEST_MANPAGE_INSTALL_PATH="${LOCALBASE}/man/man6"

CXXFLAGS +=		-I${LOCALBASE}/include

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/mk/cmake/Modules/FindLUA.cmake \
		${WRKSRC}/source/shared_lib/CMakeLists.txt

.include <bsd.port.mk>
