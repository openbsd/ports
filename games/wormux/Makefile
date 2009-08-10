# $OpenBSD: Makefile,v 1.14 2009/08/10 06:31:43 kili Exp $

COMMENT=		free software clone of Worms(R) game concept

DISTNAME=		wormux-0.8.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		games

HOMEPAGE=		http://wormux.org

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 c crypto idn m png pthread pthread-stubs ssl \
			stdc++ xcb z

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

post-extract:
	rm -Rf ${WRKSRC}/data/locale

.include <bsd.port.mk>
