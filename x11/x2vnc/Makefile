# Makefile for:         x2vnc
# Version required:     1.0
# Date created:         12 Jan 2000
# Whom:                 dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/13 01:50:24 dugsong Exp $

DISTNAME=	x2vnc-1.0

CATEGORIES=     x11

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://www.hubbe.net/~hubbe/

NO_PATCH=	yes

USE_IMAKE=	yes

ALL_TARGET=	x2vnc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
