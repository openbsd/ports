# $OpenBSD: Makefile,v 1.9 2000/02/14 22:12:48 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	http://members.aol.com/mlemke6413/

NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	yes
PERMIT_PKG_FTP=		yes
PERMIT_DISTF_CDROM=	yes
PERMIT_DISTF_FTP=	yes

USE_ZIP=	yes

MAKEFILE=	unix/makefile
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"

ALL_TARGET=	unace

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
