# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:33 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
NEED_VERSION=	1.210
MASTER_SITES=	http://members.aol.com/mlemke6413/


MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

USE_ZIP=	yes

MAKE_FILE=	unix/makefile
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"

ALL_TARGET=	unace

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
