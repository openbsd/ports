# $OpenBSD: Makefile,v 1.8 2013/04/25 16:40:11 sebastia Exp $

COMMENT=	view images and do slideshows

DISTNAME =	LaternaMagica-0.4
REVISION =	1

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB+=	c m pthread

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
