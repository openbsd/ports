# $OpenBSD: Makefile,v 1.4 2002/11/03 20:53:18 naddy Exp $

COMMENT=	"Oxyd/Rock'n'Roll clone"

VERSION=	0.50
DISTNAME=	enigma-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/enigma/

MAINTAINER=     Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://savannah.nongnu.org/download/enigma/

LIB_DEPENDS=	SDL_image.1::devel/sdl-image	\
		SDL_mixer.2::devel/sdl-mixer	\
		lua.4,lualib.4::lang/lua
		
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-png
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
