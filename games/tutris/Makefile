# $OpenBSD: Makefile,v 1.1.1.1 2003/04/16 19:47:44 sturm Exp $

COMMENT=	"graphical tetris clone"
DISTNAME=	Tutris-1.0.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games x11
MASTER_SITES=	http://www.2ndpoint.fi/projektit/filut/

HOMEPAGE=	http://www.2ndpoint.fi/projektit/tutris.html

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/tutris,tutris}
	${INSTALL_PROGRAM} ${WRKSRC}/src/tutris ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tutris
	${INSTALL_DATA} ${WRKSRC}/data/*.png ${PREFIX}/share/tutris

.include <bsd.port.mk>
