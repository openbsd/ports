# $OpenBSD: Makefile,v 1.9 2005/11/03 21:52:46 pvalchev Exp $

COMMENT=	"zombies clone"

VERSION=	1.0.0
DISTNAME=	sdlzombies-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://hocwp.free.fr/sdlzombies.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid

MASTER_SITES=	http://hocwp.free.fr/

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlzombies
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sdlzombies/

.include <bsd.port.mk>
