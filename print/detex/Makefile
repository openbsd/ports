# OpenBSD makefile for: 	  detex
# Version required:     	  2.6
# Date created:			  May 17 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.14 2002/03/21 21:25:50 espie Exp $
#

COMMENT=		"strip TeX/LaTeX codes from a file"

DISTNAME=		detex-2.6
CATEGORIES=		print
NEED_VERSION=		1.515
MASTER_SITES=		ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar

MAINTAINER=     	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}
MAN1=			detex.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1}l ${PREFIX}/man/man1/${MAN1}


.include <bsd.port.mk>
