# OpenBSD makefile for:			pilot_makedoc
# Version required:			0.7
# Date created:				April 27 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:36 espie Exp $
#

PKGNAME=	pilot_makedoc-0.7
CATEGORIES=	textproc
MASTER_SITES=	http://www.concentric.net/~rbram/
DISTFILES=	makedoc7.cpp
NEED_VERSION=	1.191
EXTRACT_ONLY=

MAINTAINER=	angelos@openbsd.org

WRKDIST=	${WRKDIR}
ALL_TARGET=	pilot_makedoc

post-extract:
		@cp ${DISTDIR}/${DISTFILES} ${WRKDIR}
		@cp ${FILESDIR}/Makefile ${WRKDIR}

do-install:
		@${INSTALL_PROGRAM} ${WRKDIR}/pilot_makedoc ${PREFIX}/bin

.include <bsd.port.mk>
