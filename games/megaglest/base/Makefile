# $OpenBSD: Makefile,v 1.5 2014/07/09 09:16:05 ajacoutot Exp $

COMMENT =		3D real-time strategy game
DISTNAME =		megaglest-source-${V}
PKGNAME =		megaglest-${V}
REVISION =		3

WANTLIB += GL GLU GLEW ICE SDL SM X11 Xext c crypto curl fontconfig ftgl
WANTLIB += freetype idn ircclient jpeg ${MODLUA_WANTLIB}
WANTLIB += m miniupnpc ogg openal png pthread ssl stdc++ vlc vlccore vorbis
WANTLIB += vorbisfile wx_base wx_gtk2_core wx_gtk2_gl xerces-c z

MODULES =		lang/lua
BUILD_DEPENDS =		devel/help2man
RUN_DEPENDS =		games/megaglest/data \
			devel/desktop-file-utils
LIB_DEPENDS =		audio/libogg \
			audio/libvorbis \
			audio/openal \
			devel/sdl \
			graphics/glew \
			graphics/ftgl \
			graphics/jpeg \
			graphics/png \
			net/curl \
			net/libircclient \
			net/miniupnp/miniupnpc \
			textproc/xerces-c \
			x11/vlc,-main \
			x11/wxWidgets

CONFIGURE_ARGS = 	-DBUILD_MEGAGLEST_MODEL_IMPORT_EXPORT_TOOLS=0 \
			-DMEGAGLEST_MANPAGE_INSTALL_PATH="${LOCALBASE}/man/man6"
.ifdef DEBUG
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Debug
.endif

WRKDIST = 		${WRKDIR}/${PKGNAME}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/mk/cmake/Modules/FindLUA.cmake \
		${WRKSRC}/source/shared_lib/CMakeLists.txt

.include <bsd.port.mk>
