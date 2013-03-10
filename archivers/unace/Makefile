# $OpenBSD: Makefile,v 1.32 2013/03/10 22:28:05 espie Exp $

COMMENT=	extract, view & test ACE archives

DISTNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/compress/}

# Vague
PERMIT_PACKAGE_CDROM=	no terms
PERMIT_PACKAGE_FTP=	no terms
PERMIT_DISTFILES_FTP=	unclear terms

REVISION =	0
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DUNIX -DCASEINSENSE"
MAKE_FILE=	unix/makefile

NO_TEST=	Yes

pre-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} clean

ALL_TARGET=	unace

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unace ${PREFIX}/bin

.include <bsd.port.mk>
