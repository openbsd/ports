# OpenBSD makefile for: 	  detex
# Version required:     	  2.6
# Date created:			  May 17 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/03/24 22:11:56 espie Exp $
#

DISTNAME=		detex-2.6
CATEGORIES=		print
NEED_VERSION=		1.191
MASTER_SITES=		ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar

MAINTAINER=     	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=		${WRKDIR}
MAN1=			detex.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1}l ${PREFIX}/man/man1/${MAN1}


.include <bsd.port.mk>
