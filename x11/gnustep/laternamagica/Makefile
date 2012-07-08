# $OpenBSD: Makefile,v 1.6 2012/07/08 13:48:22 sebastia Exp $

COMMENT=	view images and do slideshows

DISTNAME =	LaternaMagica-0.4

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB+=	c m pthread

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
