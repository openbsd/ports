# OpenBSD makefile for:	mirror
# Version required:	2.8
# Date created:		4 Dec 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/10/20 08:39:47 form Exp $
#

DISTNAME=	mirror-2.9
CATEGORIES=	net
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/

MAINTAINER=	form@OpenBSD.ORG

NO_WRKSUBDIR=	yes
MAKEFILE=	makefile
MAN1=		mirror.1 mirrormaster.1

pre-install:
	${MKDIR} ${PREFIX}/lib/mirror

.include <bsd.port.mk>
