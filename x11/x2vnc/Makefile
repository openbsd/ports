# $OpenBSD: Makefile,v 1.13 2003/04/10 18:08:57 jsyn Exp $

COMMENT=	"one keyboard and/or mouse, multiple X and VNC displays"

DISTNAME=	x2vnc-1.4
CATEGORIES=     x11

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hubbe.net/~hubbe/

HOMEPAGE=	http://www.hubbe.net/~hubbe/x2vnc.html

USE_X11=	Yes
CONFIGURE_STYLE=	imake

ALL_TARGET=	x2vnc x2vnc.0

NO_REGRESS=	Yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/x2vnc.0 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
