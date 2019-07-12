# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:15 sthen Exp $

COMMENT=	bomberman clone with multiplayer mode

DISTNAME=	bomberclone-0.11.9
CATEGORIES=	games x11
REVISION=	0

HOMEPAGE=	http://www.bomberclone.de/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL SDL_image SDL_mixer c jpeg m png pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bomberclone/}

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug --disable-werror
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-pthread -lm"
CFLAGS +=	-fgnu89-inline

.include <bsd.port.mk>
