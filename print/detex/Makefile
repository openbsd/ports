# OpenBSD makefile for: 	  detex
# Version required:     	  2.6
# Date created:			  May 17 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.12 2001/06/20 01:43:32 pvalchev Exp $
#

COMMENT=		"strip TeX/LaTeX codes from a file"

DISTNAME=		detex-2.6
CATEGORIES=		print
NEED_VERSION=		1.402
MASTER_SITES=		ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar

MAINTAINER=     	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}
MAN1=			detex.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1}l ${PREFIX}/man/man1/${MAN1}


.include <bsd.port.mk>
