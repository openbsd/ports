# $OpenBSD: Makefile,v 1.18 2010/11/16 11:23:27 espie Exp $

COMMENT=	enhanced clone of Id Software's Doom game; multiplayer
DISTNAME=	prboom-2.4.7
REVISION =	1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB =	SDL c m pthread z GL GLU SDL_mixer.>=3 SDL_net.>=1 png.>=4

USE_GROFF =	Yes

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		graphics/png

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
