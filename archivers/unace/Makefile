# $OpenBSD: Makefile,v 1.17 2001/03/24 22:37:59 brad Exp $

COMMENT=	"extract, view & test ACE archives"

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
NEED_VERSION=	1.363
MASTER_SITES=	http://members.aol.com/mlemke6413/
EXTRACT_SUFX=	.zip

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"
MAKE_FILE=	unix/makefile

ALL_TARGET=	unace

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unace ${PREFIX}/bin

.include <bsd.port.mk>
