# Makefile for:         x2vnc
# Version required:     1.0
# Date created:         12 Jan 2000
# Whom:                 dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.5 2000/10/22 14:03:58 espie Exp $

DISTNAME=	x2vnc-1.0

CATEGORIES=     x11

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hubbe.net/~hubbe/

USE_IMAKE=	Yes

ALL_TARGET=	x2vnc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
