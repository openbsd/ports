# $OpenBSD: Makefile,v 1.13 2007/10/29 22:57:04 jolan Exp $

COMMENT=	enhanced clone of Id Software's Doom game; multiplayer
DISTNAME=	prboom-2.4.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid z GL GLU

USE_X11=Yes

LIB_DEPENDS=	SDL_mixer.>=3::devel/sdl-mixer \
		SDL_net.>=1::devel/sdl-net \
		png.>=4::graphics/png

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
