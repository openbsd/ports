# OpenBSD makefile for:	gofer
# Version required:	2.30.
# Date created:		31 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.8 2000/04/09 17:36:46 espie Exp $
#

DISTNAME=	gofer230a
PKGNAME=	gofer-2.30a
CATEGORIES=	lang
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	ftp://cs.nott.ac.uk/nott-fp/languages/haskell/gofer/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=		${WRKDIR}/src
LIBDIR=		${PREFIX}/lib/Gofer
MAN1=		gofer.1

do-install:
	mkdir -p ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/*.prelude ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/src/prelude.h ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/src/gofc.h ${LIBDIR}
	/usr/bin/perl -pi -e "s|#include \"prelude.h\"|#include \"${LIBDIR}/prelude.h\"|" ${LIBDIR}/gofc.h
	${INSTALL_DATA} ${WRKDIR}/src/runtime.o ${LIBDIR}
	${INSTALL_SCRIPT} ${WRKDIR}/scripts/gofer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIR}/scripts/goferc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/src/gofer ${LIBDIR}
	${INSTALL_PROGRAM} ${WRKDIR}/src/gofc ${LIBDIR}
	${INSTALL_MAN} ${WRKDIR}/docs/gofer.1 ${PREFIX}/man/man1
	mkdir -p ${LIBDIR}/docs
	${INSTALL_DATA} ${WRKDIR}/docs/* ${LIBDIR}/docs

.include <bsd.port.mk>
