# $OpenBSD: Makefile,v 1.5 2000/02/22 20:27:35 turan Exp $
#

DISTNAME=	piewm
PKGNAME=	piewm-1.0
CATEGORIES=	x11

MAINTAINER=	ports@OpenBSD.ORG

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
