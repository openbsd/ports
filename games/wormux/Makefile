# $OpenBSD: Makefile,v 1.4 2007/12/15 22:37:36 ajacoutot Exp $

COMMENT=		free software clone of Worms(R) game concept

DISTNAME=		wormux-0.7.9
PKGNAME=		${DISTNAME}p1
CATEGORIES=		games

HOMEPAGE=		http://wormux.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext c crypto glib-2.0 glibmm-2.4 gobject-2.0 \
			idn m pthread sigc-2.0 ssl stdc++ usbhid xml2 z

MASTER_SITES=		http://download.gna.org/wormux/

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		SDL_gfx::devel/sdl-gfx \
			SDL_image::devel/sdl-image \
			SDL_mixer::devel/sdl-mixer \
			SDL_net::devel/sdl-net \
			SDL_ttf::devel/sdl-ttf \
			curl.>=5::net/curl \
			xml++-2.6::textproc/libxml++

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cp ${FILESDIR}/openbsd.h ${WRKSRC}/src/include/

.include <bsd.port.mk>
