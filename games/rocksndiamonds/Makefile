# $OpenBSD: Makefile,v 1.1.1.1 2003/04/11 15:31:27 wilfried Exp $

COMMENT=	"maze game resembling boulderdash"
DISTNAME=	rocksndiamonds-2.1.1
CATEGORIES=	games x11
MASTER_SITES=	http://www.artsoft.org/RELEASES/unix/rocksndiamonds/

HOMEPAGE=	http://www.artsoft.org/rocksndiamonds/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer,mikmod \
		SDL_image::devel/sdl-image

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
