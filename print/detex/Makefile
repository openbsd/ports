# OpenBSD makefile for: 	  detex
# Version required:     	  2.6
# Date created:			  May 17 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/02/12 08:41:11 turan Exp $
#

DISTNAME=		detex-2.6
CATEGORIES=		print
MASTER_SITES=		ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar
NEED_VERSION=		1.191

MAINTAINER=     	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=		${WRKDIR}
MAN1=			detex.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1}l ${PREFIX}/man/man1/${MAN1}


.include <bsd.port.mk>
