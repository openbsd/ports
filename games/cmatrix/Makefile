# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:16 sthen Exp $

COMMENT=		scrolling 'Matrix'-like screen
DISTNAME=		cmatrix-1.2a
CATEGORIES=		games misc
REVISION=		1

HOMEPAGE=		http://www.asty.org/cmatrix/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

FONTDIR=		${PREFIX}/share/fonts/misc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cmatrix ${PREFIX}/bin/cmatrix
	${INSTALL_MAN} ${WRKSRC}/cmatrix.1 ${PREFIX}/man/man6/cmatrix.6
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/mtx.pcf ${FONTDIR}

.include <bsd.port.mk>
