# $OpenBSD: Makefile,v 1.7 2000/02/10 23:14:28 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	http://members.aol.com/mlemke6413/

NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

USE_ZIP=	yes
USE_GMAKE=	yes

ALL_TARGET=	unace
MAKEFILE=	unix/makefile
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
