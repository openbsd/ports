# $OpenBSD: Makefile,v 1.4 1999/03/14 19:46:05 brad Exp $

DISTNAME=	mirror-2.9
CATEGORIES=	net
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/

MAINTAINER=	form@OpenBSD.ORG

NO_WRKSUBDIR=	yes
MAKEFILE=	makefile
MAN1=		mirror.1 mirrormaster.1

pre-install:
	${MKDIR} ${PREFIX}/lib/mirror

.include <bsd.port.mk>
