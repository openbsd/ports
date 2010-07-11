# $OpenBSD: Makefile,v 1.31 2010/07/11 15:57:47 espie Exp $

COMMENT=	extract, view & test ACE archives

DISTNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/compress/}

# Vague
PERMIT_PACKAGE_CDROM=	no terms
PERMIT_PACKAGE_FTP=	no terms
PERMIT_DISTFILES_CDROM=	unclear terms
PERMIT_DISTFILES_FTP=	unclear terms

REVISION =	0
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"
MAKE_FILE=	unix/makefile

NO_REGRESS=	Yes

pre-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} clean

ALL_TARGET=	unace

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unace ${PREFIX}/bin

.include <bsd.port.mk>
