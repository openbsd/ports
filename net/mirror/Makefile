# $OpenBSD: Makefile,v 1.7 2000/02/22 17:08:44 espie Exp $

DISTNAME=	mirror-2.9
CATEGORIES=	net
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/
NEED_VERSION=	1.210

MAINTAINER=	ports@openbsd.org

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mirror

.include <bsd.port.mk>
