# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:22 sthen Exp $

ONLY_FOR_ARCHS =	${LE_ARCHS}

COMMENT =		game of lonely space and adventure

CATEGORIES =		games

HOMEPAGE =		https://pioneerspacesim.net/

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}
WANTLIB += GL GLEW GLU SDL2 SDL2_image assimp c freetype m png pthread
WANTLIB += sigc-2.0 vorbisfile z

GH_ACCOUNT =		pioneerspacesim
GH_PROJECT =		pioneer
GH_TAGNAME =		20190203
REVISION =		0

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua
MODLUA_VERSION =	5.2
LIB_DEPENDS =		audio/libvorbis \
			devel/libsigc++-2 \
			devel/sdl2-image \
			graphics/glew \
			multimedia/assimp
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			PIONEER_DATA_DIR=${PREFIX}/share/pioneer/
CONFIGURE_ARGS =	-DUSE_SYSTEM_LIBGLEW=ON \
			-DUSE_SYSTEM_LIBLUA=ON

MAKE_FLAGS =		V=1

NO_TEST =		Yes

.include <bsd.port.mk>
