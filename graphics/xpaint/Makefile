# $OpenBSD: Makefile,v 1.8 1999/04/09 02:27:14 brad Exp $

DISTNAME=       xpaint-2.5.5
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    jpeg:${PORTSDIR}/graphics/jpeg \
		tiff:${PORTSDIR}/graphics/tiff34 \
		png:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/xpaint
USE_IMAKE=      yes

.include <bsd.port.mk>
