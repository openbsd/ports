# $OpenBSD: Makefile,v 1.1.1.1 2003/11/03 20:34:18 sturm Exp $

COMMENT=	"Snapshot and background plugin for Gkrellm2"

VERSION=	0.4.1
DISTNAME=	gkrellshoot-${VERSION}
CATEGORIES=	x11 sysutils/gkrellm

HOMEPAGE=	http://gkrellshoot.sourceforge.net
MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

RUN_DEPENDS=	:ImageMagick-*:graphics/ImageMagick

WRKDIST=	${WRKDIR}/gkrellShoot-${VERSION}
ALL_TARGET=	gkrellshoot.so
PLUGIN=		${WRKSRC}/gkrellshoot.so

.include <bsd.port.mk>
