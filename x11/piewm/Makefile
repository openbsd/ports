# $OpenBSD: Makefile,v 1.4 2000/02/16 10:52:15 espie Exp $
#

DISTNAME=	piewm
PKGNAME=	piewm-1.0
CATEGORIES=	x11

MAINTAINER=	don@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.x.org/R5contrib/
EXTRACT_SUFX=	.tar.Z

USE_IMAKE=	yes

# piewm.tar.Z includes and old version of xpm, and also a bunch of .o
# files plus an executable.  Get rid of them.
# 
pre-configure:
	@rm -rf ${WRKDIR}/xpm

pre-build:
	@(cd ${WRKSRC}; ${MAKE} clean)

.include <bsd.port.mk>
