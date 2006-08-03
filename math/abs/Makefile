# $OpenBSD: Makefile,v 1.10 2006/08/03 20:04:51 espie Exp $

COMMENT=	"free spreadsheet with graphical user interface"

DISTNAME=	abs-src-0.8
PKGNAME=	${DISTNAME:S/-src//}p1
CATEGORIES=	math

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xaw Xext Xmu Xpm Xt c.>=35 m

MASTER_SITES=	http://www.ping.be/bertin/

USE_X11=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abs
	${INSTALL_PROGRAM} ${WRKSRC}/abs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/abs

.include <bsd.port.mk>
