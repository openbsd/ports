# $OpenBSD: Makefile,v 1.10 2002/03/21 21:25:56 espie Exp $

COMMENT=	one keyboard and/or mouse, multiple X and VNC displays

DISTNAME=	x2vnc-1.2
CATEGORIES=     x11
NEED_VERSION=	1.515

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hubbe.net/~hubbe/

USE_X11=	Yes
CONFIGURE_STYLE=	imake

ALL_TARGET=	x2vnc x2vnc.0

do-install:
	${INSTALL_MAN} ${WRKSRC}/x2vnc.0 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
