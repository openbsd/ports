# $OpenBSD: Makefile,v 1.17 2002/10/29 19:48:58 naddy Exp $

COMMENT=	"quick start-up utility for applications on an X11 display"

PKGNAME=	bricons-3.0
DISTNAME=	bricons-athena-3.0
CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.uni-paderborn.de/unix/X11/ftp.x.org/R5contrib/ \
		ftp://ftp.pasteur.fr/pub/computing/unix/X11/R5contrib/

CONFIGURE_STYLE= imake
WRKDIST=	${WRKDIR}/bricons
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/Xbricons ${PREFIX}/lib/X11/app-defaults
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/bitmaps
	${INSTALL_DATA} ${WRKSRC}/bitmaps/*.xbm ${PREFIX}/include/X11/bitmaps
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps
	${INSTALL_DATA} ${WRKSRC}/*.xpm ${PREFIX}/include/X11/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bricons
	${INSTALL_DATA} ${FILESDIR}/DOTbriconsrc \
		${PREFIX}/share/examples/bricons/dot.briconsrc

.include <bsd.port.mk>
