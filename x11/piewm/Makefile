# OpenBSD makefile for:	piewm
# Version required:	1.0
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/23 19:58:55 don Exp $
#

DISTNAME=	piewm
PKGNAME=	piewm-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.x.org/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	don@OpenBSD.ORG

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_IMAKE=	yes

# piewm.tar.Z includes and old version of xpm, and also a bunch of .o
#  files plus an executable

pre-configure:
	@${RM} -rf ${WRKDIR}/xpm

pre-build:
	@(cd ${WRKSRC}; ${MAKE} clean)

.include <bsd.port.mk>
