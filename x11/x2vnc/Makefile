# $OpenBSD: Makefile,v 1.8 2001/04/06 15:01:57 nate Exp $

COMMENT=	one keyboard and/or mouse, multiple X and VNC displays

DISTNAME=	x2vnc-1.2
CATEGORIES=     x11
NEED_VERSION=	1.383

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hubbe.net/~hubbe/

CONFIGURE_STYLE=	imake

ALL_TARGET=	x2vnc x2vnc.0

do-install:
	${INSTALL_MAN} ${WRKSRC}/x2vnc.0 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
