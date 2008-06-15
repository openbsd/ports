# $OpenBSD: Makefile,v 1.11 2008/06/15 01:51:11 ajacoutot Exp $

COMMENT=	maze game resembling boulderdash
DISTNAME=	rocksndiamonds-3.1.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11
MASTER_SITES=	http://www.artsoft.org/RELEASES/unix/rocksndiamonds/

HOMEPAGE=	http://www.artsoft.org/rocksndiamonds/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext c m pthread smpeg usbhid

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		SDL_image::devel/sdl-image \
		SDL_net::devel/sdl-net

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

N=rocksndiamonds
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${N} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} ${PREFIX}/share/${N}

.include <bsd.port.mk>
