# $OpenBSD: Makefile,v 1.10 2000/02/11 00:37:30 espie Exp $

DISTNAME=	vic-2.8ucl4
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/

NEED_VERSION=	1.191
MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_X11=	yes
USE_AUTOCONF=	yes

WRKDIST=		${WRKDIR}/vic

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vic ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/histtolut ${PREFIX}/bin

.include <bsd.port.mk>
