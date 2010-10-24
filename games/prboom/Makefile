# $OpenBSD: Makefile,v 1.16 2010/10/24 21:19:02 ajacoutot Exp $

COMMENT=	enhanced clone of Id Software's Doom game; multiplayer
DISTNAME=	prboom-2.4.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		SDL c m pthread z GL GLU

USE_GROFF =	Yes

LIB_DEPENDS=	SDL_mixer.>=3::devel/sdl-mixer \
		SDL_net.>=1::devel/sdl-net \
		png.>=4::graphics/png

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
