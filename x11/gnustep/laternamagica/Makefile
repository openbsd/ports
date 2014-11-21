# $OpenBSD: Makefile,v 1.11 2014/11/21 18:21:22 sebastia Exp $

COMMENT=	view images and do slideshows

DISTNAME =	LaternaMagica-0.4
REVISION =	4

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
