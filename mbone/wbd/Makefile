# $OpenBSD: Makefile,v 1.6 1999/09/05 00:28:41 brad Exp $

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
