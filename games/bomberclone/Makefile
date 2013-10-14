# $OpenBSD: Makefile,v 1.10 2013/10/14 14:02:37 bcallah Exp $

COMMENT=	bomberman clone with multiplayer mode

DISTNAME=	bomberclone-0.11.9
CATEGORIES=	games x11

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

HOMEPAGE=	http://www.bomberclone.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL SDL_image SDL_mixer c jpeg m png pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bomberclone/}

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-pthread"

.include <bsd.port.mk>
