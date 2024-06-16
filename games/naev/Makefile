# Requires OpenGL>=3.2
ONLY_FOR_ARCHS = 	aarch64 amd64 i386

COMMENT-main =		2D space trading and combat game
COMMENT-data =		naev game data

V = 			0.11.5
DISTNAME =		naev-${V}-source
PKGNAME = 		naev-${V}

CATEGORIES = 		games x11

HOMEPAGE = 		https://naev.org/

MAINTAINER = 		Kirill Bychkov <kirby@openbsd.org>

# GPLv3, GPLv2+, CC-by, CC-by-sa 3.0
PERMIT_PACKAGE = 	Yes

SITES =          	https://github.com/naev/naev/releases/download/v${V}/
EXTRACT_SUFX = 		.tar.xz

WANTLIB-main += SDL2 SDL2_image c cblas cholmod cxsparse freetype glpk
WANTLIB-main += m openal physfs unibreak vorbis vorbisfile xml2 pcre2-8
WANTLIB-main += enet ${MODLUA_WANTLIB}
WANTLIB-data =

MODULES =		devel/meson lang/lua\
			textproc/intltool
BUILD_DEPENDS = 	textproc/py-yaml,python3 \
			devel/appstream,-main \
			devel/gettext,-tools
LIB_DEPENDS-main =	audio/libvorbis \
			audio/openal \
			devel/sdl2-image \
			devel/glpk>=5.0 \
			devel/pcre2 \
			devel/physfs \
			math/cblas \
			math/suitesparse \
			net/enet \
			textproc/libunibreak \
			textproc/libxml \
			${MODLUA_LIB_DEPENDS}
RUN_DEPENDS-main =	devel/desktop-file-utils \
			naev-data-${V}:${BUILD_PKGPATH},-data \
			x11/gtk+4,-guic

CONFIGURE_ARGS +=	-Ddocs_c=disabled \
			-Ddocs_lua=disabled \
			-Dluajit=disabled \
			-Dblas=cblas

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

MULTI_PACKAGES = 	-main -data

PKG_ARCH-data = 	*

WRKDIST = 		${WRKDIR}/${DISTNAME:S/-source//}

.include <bsd.port.mk>
