# $OpenBSD: Makefile,v 1.4 1998/10/18 05:01:58 marc Exp $
#

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers

#BROKEN=	"source file no longer available"
NO_CDROM=	"NOFEE: Can not sell"

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=	ftp://apple2.caltech.edu/Zocalo/pub/apple2/ARCHIVERS/
EXTRACT_SUFX=	.tar.Z

WRKSRC=		${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
