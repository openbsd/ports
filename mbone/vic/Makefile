# $OpenBSD: Makefile,v 1.5 1999/09/03 16:24:42 angelos Exp $

DISTNAME=	vic
DISTFILES=	vic-2.8ucl4.tar.gz
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80

USE_AUTOCONF=	yes
USE_X11=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vic ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/histtolut ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/vic.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
