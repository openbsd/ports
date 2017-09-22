# $OpenBSD: Makefile,v 1.12 2017/09/22 21:30:32 sthen Exp $

COMMENT=		free software clone of Worms(R) game concept

DISTNAME=		warmux-11.04.1
REVISION=		6
WRKDIST=		${WRKDIR}/warmux-11.04
CATEGORIES=		games

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} 
WANTLIB += SDL SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf X11 c crypto
WANTLIB += curl intl m nghttp2 png pthread ssl xml2 z

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include -DSIZE_T_FIXEDPOINT_METHODS ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MKDIR_P='mkdir -p'
CONFIGURE_ARGS+=	--enable-servers

.include <bsd.port.mk>
