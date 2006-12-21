# $OpenBSD: Makefile,v 1.1.1.1 2006/12/21 17:27:05 jasper Exp $

COMMENT=		"scrolling 'Matrix'-like screen"
DISTNAME=		cmatrix-1.2a
CATEGORIES=		games misc

HOMEPAGE=		http://www.asty.org/cmatrix/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu
USE_X11=		Yes

FONTDIR=		${PREFIX}/lib/X11/fonts/misc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cmatrix ${PREFIX}/bin/cmatrix
	${INSTALL_MAN} ${WRKSRC}/cmatrix.1 ${PREFIX}/man/man6/cmatrix.6
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/mtx.pcf ${FONTDIR}

.include <bsd.port.mk>
