# $OpenBSD: Makefile,v 1.1.1.1 1999/09/06 23:40:07 brad Exp $

DISTNAME=	gif2png-0.6
CATEGORIES=	graphics
MASTER_SITES=	ftp://swrinde.nde.swri.edu/pub/png/applications/

NEED_VERSION=	1.91

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

USE_ZIP=	yes
WRKSRC=		${WRKDIR}/gif2png

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gif2png ${PREFIX}/bin

.include <bsd.port.mk>
