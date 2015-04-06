# $OpenBSD: Makefile,v 1.7 2015/04/06 12:49:52 stsp Exp $

COMMENT =		3D real-time strategy game
DISTNAME =		megaglest-source-${V}
PKGNAME =		megaglest-${V}

WANTLIB += GL GLU GLEW SDL X11 c crypto curl fontconfig ftgl
WANTLIB += fribidi freetype glib-2.0 idn ircclient jpeg ${MODLUA_WANTLIB}
WANTLIB += m miniupnpc openal png pthread ssl stdc++ vlc vlccore
WANTLIB += vorbisfile wx_base wx_gtk2_core wx_gtk2_gl z

MODULES =		devel/gettext \
			lang/lua
# undefined reference to `luaL_loadbuffer' with lua >= 5.2
MODLUA_VERSION = 	5.1
BUILD_DEPENDS =		devel/help2man
RUN_DEPENDS =		games/megaglest/data \
			devel/desktop-file-utils
LIB_DEPENDS =		audio/openal \
			devel/sdl \
			graphics/glew \
			graphics/ftgl \
			graphics/jpeg \
			graphics/png \
			net/curl \
			net/libircclient \
			net/miniupnp/miniupnpc \
			x11/vlc,-main \
			x11/wxWidgets

CONFIGURE_ARGS = 	-DBUILD_MEGAGLEST_MODEL_IMPORT_EXPORT_TOOLS=0 \
			-DFORCE_LUA_5_2=0 -DFORCE_LUA_5_1=1 \
			-DMEGAGLEST_MANPAGE_INSTALL_PATH="${LOCALBASE}/man/man6"
WRKDIST = 		${WRKDIR}/${PKGNAME}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/mk/cmake/Modules/FindLUA.cmake \
		${WRKSRC}/source/shared_lib/CMakeLists.txt

.include <bsd.port.mk>
