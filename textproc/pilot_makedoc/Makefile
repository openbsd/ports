# OpenBSD makefile for:			pilot_makedoc
# Version required:			0.7
# Date created:				April 27 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 2000/04/09 17:38:30 espie Exp $
#

PKGNAME=	pilot_makedoc-0.7
CATEGORIES=	textproc
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	http://www.concentric.net/~rbram/
DISTFILES=	makedoc7.cpp
EXTRACT_ONLY=

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}
ALL_TARGET=	pilot_makedoc

post-extract:
		@cp ${DISTDIR}/${DISTFILES} ${WRKDIR}
		@cp ${FILESDIR}/Makefile ${WRKDIR}

do-install:
		@${INSTALL_PROGRAM} ${WRKDIR}/pilot_makedoc ${PREFIX}/bin

.include <bsd.port.mk>
