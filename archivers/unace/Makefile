# $OpenBSD: Makefile,v 1.25 2003/06/04 22:16:22 jolan Exp $

COMMENT=	"extract, view & test ACE archives"

DISTNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/compress/}

# Vague
PERMIT_PACKAGE_CDROM=	"no terms"
PERMIT_PACKAGE_FTP=	"no terms"
PERMIT_DISTFILES_CDROM=	"unclear terms"
PERMIT_DISTFILES_FTP=	"unclear terms"

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"
MAKE_FILE=	unix/makefile

NO_REGRESS=	Yes

ALL_TARGET=	clean unace

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unace ${PREFIX}/bin

.include <bsd.port.mk>
