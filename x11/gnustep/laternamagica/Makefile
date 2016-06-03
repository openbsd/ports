# $OpenBSD: Makefile,v 1.14 2016/06/03 11:57:57 sebastia Exp $

COMMENT=	view images and do slideshows

REVISION =	7
DISTNAME =	LaternaMagica-0.4

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
