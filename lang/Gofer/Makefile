# OpenBSD makefile for:	gofer
# Version required:	2.30.
# Date created:		31 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.4 2000/02/12 06:29:57 turan Exp $
#

DISTNAME=	gofer230a
PKGNAME=	gofer-2.30a
CATEGORIES=	lang
MASTER_SITES=	ftp://cs.nott.ac.uk/nott-fp/languages/haskell/gofer/
NEED_VERSION=	1.191

MAINTAINER=	don@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
