# OpenBSD makefile for:	xbill
# Version required:	2.0
# Date created:		December 15, 1997
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/20 03:27:01 don Exp $
#

DISTNAME=	xbill-2.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

MAINTAINER=	don@OpenBSD.ORG

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_IMAKE=	yes

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/share/xbill

.include <bsd.port.mk>
