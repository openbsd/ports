# $OpenBSD: Makefile,v 1.13 2020/04/09 07:47:40 kirby Exp $

COMMENT =		2D space trading and combat game

DISTNAME =		naev-${VERSION}
REVISION = 		2

EXTRACT_SUFX = 		.tar.bz2

WANTLIB += GL GLU SDL SDL_mixer c freetype m png pthread vorbis
WANTLIB += csparse cxsparse vorbisfile xml2 z zip ${MODLUA_WANTLIB}

MODULES =		lang/lua
RUN_DEPENDS =		devel/desktop-file-utils \
			games/naev/data=${VERSION}
LIB_DEPENDS =		archivers/libzip \
			devel/sdl-mixer \
			graphics/png \
			math/suitesparse \
			textproc/libxml \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-shave \
			--enable-debug=no \
			--enable-lua=shared \
			--without-openal \
			--without-sdl2

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

.include <bsd.port.mk>
