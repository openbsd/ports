# OpenBSD makefile for:	freefonts
# Version required:	0.10
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/23 06:15:35 don Exp $
#

DISTNAME=	freefonts-0.10
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/

MAINTAINER=	don@OpenBSD.ORG

NO_WRKSUBDIR=	yes
USE_X11=	yes

post-install:
	@${CAT} ${PKGDIR}/DESCR

.include <bsd.port.mk>
