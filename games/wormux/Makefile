# $OpenBSD: Makefile,v 1.21 2011/01/06 16:46:42 landry Exp $

COMMENT=		free software clone of Worms(R) game concept

DISTNAME=		wormux-0.9.2.1
CATEGORIES=		games

HOMEPAGE=		http://wormux.org

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 c m png pthread stdc++ SDL_gfx SDL_image \
			SDL_mixer SDL_net SDL_ttf curl>=5 xml2

MASTER_SITES=		http://download.gna.org/warmux/
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-net \
			devel/sdl-ttf \
			net/curl \
			textproc/libxml

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include -DSIZE_T_FIXEDPOINT_METHODS ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MKDIR_P='mkdir -p'
CONFIGURE_ARGS+=	--enable-servers
USE_GROFF =		Yes

.include <bsd.port.mk>
