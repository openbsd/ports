# OpenBSD makefile for:			pilot_makedoc
# Version required:			0.7
# Date created:				April 27 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/27 23:24:37 angelos Exp $
#

PKGNAME=	pilot_makedoc-0.7
CATEGORIES=	textproc
MASTER_SITES=	http://www.concentric.net/~rbram/
DISTFILES=	makedoc7.cpp

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=	YES
ALL_TARGET=	pilot_makedoc

do-extract:
		@${MKDIR} ${WRKDIR}
		@${CP} ${DISTDIR}/${DISTFILES} ${WRKDIR}
		@${CP} ${FILESDIR}/Makefile ${WRKDIR}

do-install:
		@${INSTALL_PROGRAM} ${WRKDIR}/pilot_makedoc ${PREFIX}/bin

.include <bsd.port.mk>
