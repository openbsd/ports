# $OpenBSD: Makefile,v 1.8 2004/11/28 22:41:17 espie Exp $

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
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid z

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
