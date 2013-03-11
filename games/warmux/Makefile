# $OpenBSD: Makefile,v 1.5 2013/03/11 11:07:41 espie Exp $

COMMENT=		free software clone of Worms(R) game concept

DISTNAME=		warmux-11.04.1
REVISION=		2
WRKDIST=		${WRKDIR}/warmux-11.04
CATEGORIES=		games

HOMEPAGE=		http://wormux.org

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		SDL X11 c m png pthread stdc++ SDL_gfx SDL_image \
			SDL_mixer SDL_net SDL_ttf curl>=5 xml2

MASTER_SITES=		http://download.gna.org/warmux/ \
			http://download.gna.org/warmux/archive/
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-net>=1.2.8 \
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
