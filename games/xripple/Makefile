# $OpenBSD: Makefile,v 1.2 1998/11/09 01:50:01 marc Exp $
#

DISTNAME=	xripple
PKGNAME=	xripple-1.0
CATEGORIES=	games

#BROKEN=	"www.cse.unsw.edu.au A record not found"
#		(Perhaps this is just a transient error)

MAINTAINER=	mickey@openbsd.org

MASTER_SITES=	ftp://www.cse.unsw.edu.au/pub/users/s2154962/

USE_IMAKE=	yes
ALL_TARGET=	xripple

post-configure:
	cd ${WRKSRC}; make clean

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xripple ${PREFIX}/bin

.include <bsd.port.mk>
