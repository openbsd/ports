# OpenBSD makefile for:		  jive
# Version required:     	  1.0
# Date created:			  29 April 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:31 espie Exp $
#

DISTNAME=	jive-1.1
CATEGORIES=	misc
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.nuxi.com/pub/misc/

MASTER_SITE_SUBDIR= games/amusements

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes
WRKDIST=		${WRKDIR}/jive
MAN1=			jive.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jive ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1


.include <bsd.port.mk>
