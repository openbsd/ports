# OpenBSD makefile for:	gofer
# Version required:	2.30.
# Date created:		31 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.9 2000/05/26 04:21:15 kevlo Exp $
#

DISTNAME=	gofer230a
PKGNAME=	gofer-2.30a
CATEGORIES=	lang
NEED_VERSION=	1.230

MASTER_SITES=	http://www.cse.ogi.edu/~mpj/goferarc/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/src
LIBDIR=		${PREFIX}/lib/Gofer

FAKE=		Yes

do-install:
	${INSTALL_DATA_DIR} ${LIBDIR}
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
	${INSTALL_DATA_DIR} ${LIBDIR}/docs
	${INSTALL_DATA} ${WRKDIR}/docs/* ${LIBDIR}/docs

.include <bsd.port.mk>
