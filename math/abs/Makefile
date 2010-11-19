# $OpenBSD: Makefile,v 1.15 2010/11/19 07:23:10 espie Exp $

COMMENT=	free spreadsheet with graphical user interface

DISTNAME=	abs-src-0.8
PKGNAME=	${DISTNAME:S/-src//}
REVISION=	2
CATEGORIES=	math

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xaw Xext Xmu Xpm Xt c>=35 m pthread-stubs xcb

MASTER_SITES=	http://www.ping.be/bertin/

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abs
	${INSTALL_PROGRAM} ${WRKSRC}/abs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Examples/* ${PREFIX}/share/examples/abs

.include <bsd.port.mk>
