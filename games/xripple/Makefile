# new ports collection makefile for:	xripple
# Version:				1.0 <no version #>
# Date created:				18 March 1998
# Whom:					mickey
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/03/18 19:47:00 mickey Exp $
#

DISTNAME=	xripple
PKGNAME=	xripple-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://www.cse.unsw.edu.au/pub/users/s2154962/

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	yes
ALL_TARGET=	xripple

post-configure:
	cd ${WRKSRC}; make clean

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xripple ${PREFIX}/bin

.include <bsd.port.mk>
