# $OpenBSD: Makefile,v 1.9 2000/03/24 22:11:52 espie Exp $

DISTNAME=	mirror-2.9
CATEGORIES=	net
NEED_VERSION=	1.210
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mirror

.include <bsd.port.mk>
