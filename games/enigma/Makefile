# $OpenBSD: Makefile,v 1.11 2006/08/02 09:36:20 espie Exp $

COMMENT=	"Oxyd/Rock'n'Roll clone"

DISTNAME=	enigma-0.81
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/enigma/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid z

MASTER_SITES=	http://savannah.nongnu.org/download/enigma/

BUILD_DEPENDS= :lua->=5.1:lang/lua
LIB_DEPENDS=	SDL_image.>=1::devel/sdl-image SDL_mixer.>=2::devel/sdl-mixer

USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIBS="-pthread"

.include <bsd.port.mk>
