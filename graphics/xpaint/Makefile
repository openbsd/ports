# $OpenBSD: Makefile,v 1.9 1999/10/30 21:11:16 brad Exp $

DISTNAME=	xpaint-2.5.5
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		tiff.35:${PORTSDIR}/graphics/tiff \
		png.1.3:${PORTSDIR}/graphics/png

USE_IMAKE=	yes

WRKSRC=	${WRKDIR}/xpaint

.include <bsd.port.mk>
