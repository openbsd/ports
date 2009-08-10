# $OpenBSD: Makefile,v 1.14 2009/08/10 06:34:30 kili Exp $

COMMENT=	snapshot and background plugin for Gkrellm2

V=		0.4.3
DISTNAME=	gkrellshoot-${V}
PKGNAME=	${DISTNAME}p12
CATEGORIES=	x11

HOMEPAGE=	http://gkrellshoot.sourceforge.net
MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

RUN_DEPENDS=	:ImageMagick-*:graphics/ImageMagick

WRKDIST=	${WRKDIR}/gkrellShoot-${V}
ALL_TARGET=	gkrellshoot.so
PLUGIN=		${WRKSRC}/gkrellshoot.so

.include <bsd.port.mk>
