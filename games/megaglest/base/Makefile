# $OpenBSD: Makefile,v 1.13 2017/09/14 04:43:57 kirby Exp $

COMMENT =		3D real-time strategy game
GH_PROJECT =		megaglest-source
PKGNAME =		megaglest-${GH_TAGNAME}

WANTLIB += GL GLEW GLU ICE SDL2 SM X11 Xext c crypto curl fontconfig
WANTLIB += freetype fribidi ftgl glib-2.0 intl ircclient jpeg m
WANTLIB += miniupnpc nghttp2 openal png pthread ssl vlc vlccore
WANTLIB += vorbisfile wx_base wx_gtk2_core wx_gtk2_gl z
WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}

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
			x11/wxWidgets

CONFIGURE_ARGS = 	-DBUILD_MEGAGLEST_MODEL_IMPORT_EXPORT_TOOLS=0 \
			-DFORCE_LUA_VERSION=${MODLUA_VERSION} \
			-DMEGAGLEST_MANPAGE_INSTALL_PATH="${LOCALBASE}/man/man6"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/mk/cmake/Modules/FindLUA.cmake \
		${WRKSRC}/source/shared_lib/CMakeLists.txt

.include <bsd.port.mk>
