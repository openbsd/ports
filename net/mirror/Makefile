# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:33 espie Exp $

DISTNAME=	mirror-2.9
CATEGORIES=	net
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

WRKDIST=	${WRKDIR}
MAKEFILE=	makefile

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mirror

.include <bsd.port.mk>
