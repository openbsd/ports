# OpenBSD makefile for:		  jive
# Version required:     	  1.0
# Date created:			  29 April 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/12/15 08:36:25 dugsong Exp $
#

DISTNAME=	jive-1.1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.nuxi.com/pub/misc/

MASTER_SITE_SUBDIR= games/amusements

MAINTAINER=     angelos@openbsd.org

WRKSRC=		${WRKDIR}/jive
MAN1=		jive.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jive ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1


.include <bsd.port.mk>
