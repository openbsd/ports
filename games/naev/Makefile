# $OpenBSD: Makefile,v 1.2 2021/01/17 11:11:14 kirby Exp $

# Requires OpenGL>=3.2
ONLY_FOR_ARCHS = 	aarch64 amd64 i386

COMMENT-main =		2D space trading and combat game
COMMENT-data =		naev game data

V = 			0.8.0
DISTNAME =		naev-${V}-source
PKGNAME-main = 		naev-${V}
PKGNAME-data = 		naev-data-${V}

CATEGORIES = 		games x11

HOMEPAGE = 		https://naev.org/

MAINTAINER = 		Kirill Bychkov <kirby@openbsd.org>

# GPLv3, GPLv2+, CC-by, CC-by-sa 3.0
PERMIT_PACKAGE = 	Yes

MASTER_SITES =          https://github.com/naev/naev/releases/download/v${V}/

WANTLIB-main += GL GLU SDL2 SDL2_mixer c csparse cxsparse freetype iconv intl
WANTLIB-main += m png pthread vorbis vorbisfile xml2 z ${MODLUA_WANTLIB}
WANTLIB-data =

MODULES =		lang/lua textproc/intltool
LIB_DEPENDS-main =	archivers/libzip \
			devel/sdl2-mixer \
			graphics/png \
			math/suitesparse \
			textproc/libxml \
			${MODLUA_LIB_DEPENDS}
RUN_DEPENDS-main =	devel/desktop-file-utils \
			games/naev,-data \
			x11/gtk+3,-guic

SEPARATE_BUILD = 	Yes
USE_GMAKE = 		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-shave \
			--enable-debug=no \
			--enable-lua=shared \
			--without-openal

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

MULTI_PACKAGES = 	-main -data

PKG_ARCH-data = 	*

WRKDIST = 		${WRKDIR}/${DISTNAME:S/-source//}

post-install:
	${INSTALL_DATA} ${WRKBUILD}/dat/VERSION ${PREFIX}/share/naev/dat/

.include <bsd.port.mk>
