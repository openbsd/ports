# $OpenBSD: Makefile,v 1.10 2014/05/22 09:48:57 sebastia Exp $

COMMENT=	view images and do slideshows

DISTNAME =	LaternaMagica-0.4
REVISION =	3

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
