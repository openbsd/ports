# $OpenBSD: Makefile,v 1.6 1999/10/29 20:31:28 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	http://members.aol.com/mlemke6413/

NEED_VERSION=	1.91

MAINTAINER=	brad@openbsd.org

USE_ZIP=	yes
USE_GMAKE=	yes

ALL_TARGET=	unace
MAKEFILE=	unix/makefile
NO_WRKSUBDIR=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
