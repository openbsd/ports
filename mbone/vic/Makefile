# OpenBSD makefile for:	vic
# Version required:	2.6
# Date created:		July 14 1999
# Whom:			Angelos D. Keromytis
#
# $Id: Makefile,v 1.3 1999/07/29 06:34:57 niklas Exp $
# $OpenBSD: Makefile,v 1.3 1999/07/29 06:34:57 niklas Exp $
#

DISTNAME=	vic
CATEGORIES=	mbone tk80
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/
DISTFILES=	vic-2.8ucl4.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80.1:${PORTSDIR}/x11/tk80

USE_AUTOCONF=	yes
USE_X_PREFIX=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vic ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/histtolut ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/vic.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
