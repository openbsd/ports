# $OpenBSD: Makefile,v 1.22 2002/05/12 21:37:03 brad Exp $

COMMENT=	"extract, view & test ACE archives"

DISTNAME=	unace-1.2b
CATEGORIES=	archivers
NEED_VERSION=	1.525
MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/compress/}

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"
MAKE_FILE=	unix/makefile

NO_REGRESS=	Yes

ALL_TARGET=	clean unace

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unace ${PREFIX}/bin

.include <bsd.port.mk>
