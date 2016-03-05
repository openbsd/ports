# $OpenBSD: Makefile,v 1.13 2016/03/05 16:04:08 pascal Exp $

COMMENT=	view images and do slideshows

REVISION =	6
DISTNAME =	LaternaMagica-0.4

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
