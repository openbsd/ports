# $OpenBSD: Makefile,v 1.10 2006/10/17 01:58:41 jolan Exp $

COMMENT=	"enhanced clone of Id Software's Doom game; multiplayer"
DISTNAME=	prboom-2.4.6
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid z

USE_X11=Yes

LIB_DEPENDS=	SDL_mixer.>=3::devel/sdl-mixer \
		SDL_net.>=1::devel/sdl-net \
		png.>=4::graphics/png

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt --disable-gl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
