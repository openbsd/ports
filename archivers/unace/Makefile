# $OpenBSD: Makefile,v 1.8 2000/02/12 08:41:07 turan Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	http://members.aol.com/mlemke6413/

NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_ZIP=	yes
USE_GMAKE=	yes

ALL_TARGET=	unace
MAKEFILE=	unix/makefile
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
