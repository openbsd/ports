# $OpenBSD: Makefile,v 1.15 2000/09/12 14:04:51 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
NEED_VERSION=	1.328
MASTER_SITES=	http://members.aol.com/mlemke6413/
EXTRACT_SUFX=	.zip

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"

MAKE_FILE=	unix/makefile

ALL_TARGET=	unace

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
