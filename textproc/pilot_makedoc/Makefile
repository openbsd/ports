# OpenBSD makefile for:			pilot_makedoc
# Version required:			0.7
# Date created:				April 27 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.9 2001/05/06 04:11:51 lebel Exp $
#

COMMENT=	"convert text into the Doc format used by PalmPilots"

PKGNAME=	pilot_makedoc-0.7
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=	http://www.concentric.net/~rbram/
DISTFILES=	makedoc7.cpp
EXTRACT_ONLY=

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

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
