# OpenBSD makefile for:		  jive
# Version required:     	  1.0
# Date created:			  29 April 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.15 2002/03/21 21:09:19 espie Exp $
#

COMMENT=	"convert English text to Jive"

DISTNAME=	jive-1.1
CATEGORIES=	misc
NEED_VERSION=	1.515
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/misc/

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=		${WRKDIR}/jive
MAN1=			jive.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jive ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1


.include <bsd.port.mk>
