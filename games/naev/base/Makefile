# $OpenBSD: Makefile,v 1.7 2015/04/04 12:19:26 kirby Exp $

COMMENT =		2D space trading and combat game

DISTNAME =		naev-${VERSION}

EXTRACT_SUFX = 		.tar.bz2

WANTLIB += GL GLU SDL SDL_mixer c freetype m png pthread vorbis
WANTLIB += vorbisfile xml2 z zip ${MODLUA_WANTLIB}

MODULES =		lang/lua
RUN_DEPENDS =		devel/desktop-file-utils \
			games/naev/data=${VERSION}
LIB_DEPENDS =		archivers/libzip \
			devel/sdl-mixer \
			graphics/png \
			textproc/libxml \
			${MODLUA_LIB_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-shave \
			--enable-debug=no \
			--enable-lua=shared \
			--without-openal

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

.include <bsd.port.mk>
