# $OpenBSD: Makefile,v 1.11 2006/08/02 09:36:20 espie Exp $

COMMENT=	"Rampart arcade game clone for X11" 

VERSION=	0.7.2
DISTNAME=	castle-combat-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://www.linux-games.com/castle-combat/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread usbhid z

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer \
		SDL_net::devel/sdl-net \
		png.>=2::graphics/png

MASTER_SITES=	http://user.cs.tu-berlin.de/~karlb/castle-combat/

USE_X11= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-png
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
