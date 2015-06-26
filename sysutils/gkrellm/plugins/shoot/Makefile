# $OpenBSD: Makefile,v 1.21 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	snapshot and background plugin for Gkrellm2

V=		0.4.3
DISTNAME=	gkrellshoot-${V}
REVISION=	20
CATEGORIES=	x11

HOMEPAGE=	http://gkrellshoot.sourceforge.net
MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

EXTRA_WANTLIB=	gthread-2.0

RUN_DEPENDS=	graphics/ImageMagick

WRKDIST=	${WRKDIR}/gkrellShoot-${V}
ALL_TARGET=	gkrellshoot.so
PLUGIN=		${WRKSRC}/gkrellshoot.so

.include <bsd.port.mk>
