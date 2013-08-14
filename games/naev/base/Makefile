# $OpenBSD: Makefile,v 1.6 2013/08/14 20:15:40 kirby Exp $

COMMENT =		2D space trading and combat game

DISTNAME =		naev-${VERSION}

EXTRACT_SUFX = 		.tar.bz2

WANTLIB += GL SDL SDL_mixer c freetype m ogg png pthread vorbis
WANTLIB += vorbisfile xml2 z ${MODLUA_WANTLIB}

MODULES =		lang/lua
RUN_DEPENDS =		devel/desktop-file-utils \
			games/naev/data=${VERSION}
LIB_DEPENDS =		devel/sdl-mixer \
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
