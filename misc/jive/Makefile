# OpenBSD makefile for:		  jive
# Version required:     	  1.0
# Date created:			  29 April 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2001/06/20 01:43:29 pvalchev Exp $
#

COMMENT=	"convert English text to Jive"

DISTNAME=	jive-1.1
CATEGORIES=	misc
NEED_VERSION=	1.402
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/misc/

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/jive
MAN1=			jive.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jive ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1


.include <bsd.port.mk>
