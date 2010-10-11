# $OpenBSD: Makefile,v 1.16 2010/10/11 08:18:07 jasper Exp $

COMMENT=	snapshot and background plugin for Gkrellm2

V=		0.4.3
DISTNAME=	gkrellshoot-${V}
REVISION=	16
CATEGORIES=	x11

HOMEPAGE=	http://gkrellshoot.sourceforge.net
MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

RUN_DEPENDS=	:ImageMagick-*:graphics/ImageMagick

WRKDIST=	${WRKDIR}/gkrellShoot-${V}
ALL_TARGET=	gkrellshoot.so
PLUGIN=		${WRKSRC}/gkrellshoot.so

.include <bsd.port.mk>
