# $OpenBSD: Makefile,v 1.10 2000/02/11 00:37:26 espie Exp $

DISTNAME=	xpaint-2.5.5
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		tiff.35:${PORTSDIR}/graphics/tiff \
		png.1.3:${PORTSDIR}/graphics/png

USE_IMAKE=	yes

WRKDIST=	${WRKDIR}/xpaint

.include <bsd.port.mk>
