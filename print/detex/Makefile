# OpenBSD makefile for: 	  detex
# Version required:     	  2.6
# Date created:			  May 17 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 05:08:35 angelos Exp $
#

DISTNAME=	detex-2.6
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=	.tar

MAINTAINER=     angelos@openbsd.org

EXTRACT_BEFORE_ARGS=	-C ${WRKDIR} -xf
NO_WRKSUBDIR=	yes
MAN1=		detex.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1}l ${PREFIX}/man/man1/${MAN1}


.include <bsd.port.mk>
