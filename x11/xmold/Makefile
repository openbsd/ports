# OpenBSD makefile for:   xmold
# Version required:    1.0
# Date created:        December 21, 1997
# Whom:                Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/24 21:50:36 don Exp $
#

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://cclub.tutcc.tut.ac.jp/pub/xwin/

MAINTAINER=	don@OpenBSD.ORG

USE_IMAKE=	yes

do-install:
	@${MKDIR} -p ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
