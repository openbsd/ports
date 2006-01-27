# $OpenBSD: Makefile,v 1.1.1.1 2006/01/27 01:32:50 jolan Exp $

COMMENT=	"game like Deflektor (C64) / Mindbender (Amiga)"
DISTNAME=	mirrormagic-2.0.2
CATEGORIES=	games x11
MASTER_SITES=	http://www.artsoft.org/RELEASES/unix/mirrormagic/

HOMEPAGE=	http://www.artsoft.org/mirrormagic/
MAINTAINER=	Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		SDL_image::devel/sdl-image

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
ALL_TARGET=	sdl

N=mirrormagic
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${N} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} ${PREFIX}/share/${N}

.include <bsd.port.mk>
