# $OpenBSD: Makefile,v 1.2 2012/04/07 07:31:36 kirby Exp $

COMMENT =		2D space trading and combat game

DISTNAME =		naev-${VERSION}

EXTRACT_SUFX = 		.tar.bz2

WANTLIB += GL SDL SDL_mixer c freetype lua m ogg png pthread vorbis
WANTLIB += vorbisfile xml2 z

RUN_DEPENDS =		devel/desktop-file-utils \
			games/naev/data=${VERSION}
LIB_DEPENDS =		devel/sdl-mixer \
			graphics/png \
			lang/lua \
			textproc/libxml

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-shave \
			--enable-debug=no \
			--enable-lua=shared \
			--without-openal

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

.include <bsd.port.mk>
