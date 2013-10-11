# $OpenBSD: Makefile,v 1.7 2013/10/11 23:49:35 naddy Exp $

COMMENT=		scrolling 'Matrix'-like screen
DISTNAME=		cmatrix-1.2a
CATEGORIES=		games misc

HOMEPAGE=		http://www.asty.org/cmatrix/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

FONTDIR=		${PREFIX}/lib/X11/fonts/misc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cmatrix ${PREFIX}/bin/cmatrix
	${INSTALL_MAN} ${WRKSRC}/cmatrix.1 ${PREFIX}/man/man6/cmatrix.6
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/mtx.pcf ${FONTDIR}

.include <bsd.port.mk>
