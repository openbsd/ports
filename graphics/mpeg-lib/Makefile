# OpenBSD makefile for:	mpeg_lib
# Version required:	1.2.1
# Date created:		December 17, 1997
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/20 03:17:26 don Exp $
#

DISTNAME=	mpeg_lib-1.2.1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.mni.mcgill.ca/pub/mpeg/

MAINTAINER= don@OpenBSD.ORG

WRKSRC=		${WRKDIR}/mpeg_lib

GNU_CONFIGURE= yup


pre-install:
	@${MKDIR} -p ${PREFIX}/bin ${PREFIX}/lib ${PREFIX}/include

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
