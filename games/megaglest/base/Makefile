# $OpenBSD: Makefile,v 1.9 2016/11/04 11:35:19 sthen Exp $

COMMENT =		3D real-time strategy game
DISTNAME =		megaglest-source-${V}
PKGNAME =		megaglest-${V}
REVISION =		1

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += GL GLEW GLU SDL X11 c crypto curl fontconfig freetype fribidi
WANTLIB += ftgl glib-2.0 ircclient jpeg m miniupnpc nghttp2 openal png
WANTLIB += pthread ssl stdc++ vlc vlccore vorbisfile wx_base
WANTLIB += wx_gtk2_core wx_gtk2_gl z

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
