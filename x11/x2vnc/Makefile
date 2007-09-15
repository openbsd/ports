# $OpenBSD: Makefile,v 1.18 2007/09/15 20:04:26 merdely Exp $

COMMENT=	one keyboard and/or mouse, multiple X and VNC displays

DISTNAME=	x2vnc-1.6.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=     x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xss c

MASTER_SITES=	http://fredrik.hubbe.net/x2vnc/

HOMEPAGE=	http://fredrik.hubbe.net/x2vnc.html

USE_X11=	Yes
CONFIGURE_STYLE=	imake

ALL_TARGET=	x2vnc x2vnc.0

NO_REGRESS=	Yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/x2vnc.0 ${PREFIX}/man/cat1
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
