# $OpenBSD: Makefile,v 1.5 1999/04/09 04:11:49 brad Exp $

DISTNAME=	mirror-2.9
CATEGORIES=	net
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/

MAINTAINER=	ports@openbsd.org

NO_WRKSUBDIR=	yes
MAKEFILE=	makefile

pre-install:
	${MKDIR} ${PREFIX}/lib/mirror

.include <bsd.port.mk>
