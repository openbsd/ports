# $OpenBSD: Makefile,v 1.7 1999/10/30 11:34:25 turan Exp $

BROKEN=		lots and lots of compiler warnigs, considered too unsafe.

DISTNAME=	vic-2.8ucl4
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_X11=	yes
USE_AUTOCONF=	yes

WRKSRC=		${WRKDIR}/vic

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vic ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/histtolut ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/vic.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
