# $OpenBSD: Makefile,v 1.2 1999/02/21 04:26:11 marc Exp $
#

DISTNAME=		giflib-3.0
CATEGORIES=		graphics

NEED_VERSION=		1.64

MAINTAINER=		yanick@fries.net	

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	libs/giflib

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
