# OpenBSD makefile for:   xmold
# Version required:    1.0
# Date created:        December 21, 1997
# Whom:                Don Schmidt
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 01:10:14 espie Exp $
#

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://cclub.tutcc.tut.ac.jp/pub/xwin/

MAINTAINER=	don@OpenBSD.ORG

USE_IMAKE=	yes

do-install:
	@mkdir -p ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
