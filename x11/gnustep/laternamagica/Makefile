# $OpenBSD: Makefile,v 1.15 2017/07/27 11:01:33 sthen Exp $

COMMENT=	view images and do slideshows

REVISION =	8
DISTNAME =	LaternaMagica-0.4

HOMEPAGE=	http://gap.nongnu.org/laternamagica/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

post-extract:
	rm ${WRKSRC}/AppController.m.orig

.include <bsd.port.mk>
