# $OpenBSD: Makefile,v 1.6 2003/12/03 01:00:57 jolan Exp $

COMMENT=	"Oxyd/Rock'n'Roll clone"

DISTNAME=	enigma-0.81
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/enigma/

MAINTAINER=     Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

MASTER_SITES=	http://savannah.nongnu.org/download/enigma/

LIB_DEPENDS=	SDL_image.1::devel/sdl-image	\
		SDL_mixer.2::devel/sdl-mixer	\
		lua.5,lualib.5::lang/lua
		
USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIBS="-pthread"

.include <bsd.port.mk>
