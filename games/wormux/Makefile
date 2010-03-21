# $OpenBSD: Makefile,v 1.16 2010/03/21 12:19:00 landry Exp $

COMMENT=		free software clone of Worms(R) game concept

DISTNAME=		wormux-0.9.0
CATEGORIES=		games

HOMEPAGE=		http://wormux.org

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 c m png pthread stdc++

MASTER_SITES=		http://download.gna.org/wormux/
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		SDL_gfx::devel/sdl-gfx \
			SDL_image::devel/sdl-image \
			SDL_mixer::devel/sdl-mixer \
			SDL_net::devel/sdl-net \
			SDL_ttf::devel/sdl-ttf \
			curl.>=5::net/curl \
			xml2::textproc/libxml

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MKDIR_P='mkdir -p'
CONFIGURE_ARGS+=	--enable-servers

post-extract:
	rm -Rf ${WRKSRC}/data/locale

.include <bsd.port.mk>
