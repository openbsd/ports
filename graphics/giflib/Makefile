# OpenBSD makefile for:	giflib - Gif library
# Version required:	3.0
# Date created:		1998-09-08
# Whom:			Yannick Cote	
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/11/19 00:41:20 yanick Exp $
#

DISTNAME=		giflib-3.0
CATEGORIES=		graphics

MAINTAINER=		yanick@fries.net	

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	libs/giflib

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
