# $OpenBSD: Makefile,v 1.2 2007/05/05 17:44:51 simon Exp $

COMMENT=	"bomberman clone with multiplayer mode"

DISTNAME=	bomberclone-0.11.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

HOMEPAGE=	http://www.bomberclone.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext c m pthread usbhid

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bomberclone/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-pthread"

post-install:
	cd ${WRKINST}${LOCALBASE} && find share -type d -name CVS | xargs rm -rf

.include <bsd.port.mk>
