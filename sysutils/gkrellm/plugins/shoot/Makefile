# $OpenBSD: Makefile,v 1.6 2006/06/13 13:32:48 bernd Exp $

COMMENT=	"Snapshot and background plugin for Gkrellm2"

VERSION=	0.4.3
DISTNAME=	gkrellshoot-${VERSION}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11 sysutils/gkrellm

HOMEPAGE=	http://gkrellshoot.sourceforge.net
MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

RUN_DEPENDS=	:ImageMagick-*:graphics/ImageMagick

WRKDIST=	${WRKDIR}/gkrellShoot-${VERSION}
ALL_TARGET=	gkrellshoot.so
PLUGIN=		${WRKSRC}/gkrellshoot.so

.include <bsd.port.mk>
