# $OpenBSD: Makefile,v 1.12 2015/10/26 11:53:15 sebastia Exp $

COMMENT=	view images and do slideshows

REVISION =	5
DISTNAME =	LaternaMagica-0.4

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
