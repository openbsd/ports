# Makefile for:         x2vnc
# Version required:     1.1
# Date created:         20 Jan 2001
# Whom:                 smart@monkey.org
#
# $OpenBSD: Makefile,v 1.7 2001/01/21 01:54:23 dugsong Exp $

DISTNAME=	x2vnc-1.1

CATEGORIES=     x11
NEED_VERSION=	1.341

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hubbe.net/~hubbe/

CONFIGURE_STYLE=	imake

ALL_TARGET=	x2vnc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/x2vnc ${PREFIX}/bin

.include <bsd.port.mk>
