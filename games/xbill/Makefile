# $OpenBSD: Makefile,v 1.3 1998/11/09 01:49:56 marc Exp $
#

DISTNAME=	xbill-2.0
CATEGORIES=	games

MAINTAINER=	don@OpenBSD.ORG

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

USE_IMAKE=	yes

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/share/xbill

.include <bsd.port.mk>
