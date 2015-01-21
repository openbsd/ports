# $OpenBSD: Makefile,v 1.18 2015/01/21 06:23:33 bentley Exp $

COMMENT=	free spreadsheet with graphical user interface

DISTNAME=	abs-src-0.8
PKGNAME=	${DISTNAME:S/-src//}
REVISION=	4
CATEGORIES=	math

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xaw Xext Xmu Xpm Xt c>=35 m

MASTER_SITES=	http://www.ping.be/bertin/

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abs
	${INSTALL_PROGRAM} ${WRKSRC}/abs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/abs

.include <bsd.port.mk>
