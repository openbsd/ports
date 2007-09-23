# $OpenBSD: Makefile,v 1.9 2007/09/23 12:57:08 sturm Exp $

COMMENT=	Snapshot and background plugin for Gkrellm2

VERSION=	0.4.3
DISTNAME=	gkrellshoot-${VERSION}
PKGNAME=	${DISTNAME}p5
CATEGORIES=	x11 sysutils/gkrellm

HOMEPAGE=	http://gkrellshoot.sourceforge.net
MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

RUN_DEPENDS=	:ImageMagick-*:graphics/ImageMagick

WRKDIST=	${WRKDIR}/gkrellShoot-${VERSION}
ALL_TARGET=	gkrellshoot.so
PLUGIN=		${WRKSRC}/gkrellshoot.so

.include <bsd.port.mk>
