# $OpenBSD: Makefile,v 1.9 1999/10/30 11:40:26 turan Exp $

BROKEN=		sources moved

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=    gs:${PORTSDIR}/print/ghostscript5

MAKEFILE=	makefile
WRKSRC=		${WRKDIR}/wbd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
