# $OpenBSD: Makefile,v 1.23 2013/03/11 11:46:17 espie Exp $

COMMENT=	one keyboard and/or mouse, multiple X and VNC displays

DISTNAME=	x2vnc-1.6.1
REVISION=	1
CATEGORIES=	x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xss c

MASTER_SITES=	http://fredrik.hubbe.net/x2vnc/

HOMEPAGE=	http://fredrik.hubbe.net/x2vnc.html

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

ALL_TARGET=	x2vnc x2vnc.0

NO_TEST=	Yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/x2vnc.0 ${PREFIX}/man/cat1
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
