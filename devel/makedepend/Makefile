# OpenBSD makefile for:		makedepend
# Version required:		95.07.05
# Date created:			1 Dec 1997
# Whom:				ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/01 22:03:05 joey Exp $
#

DISTNAME=	cyrus-imapd-v1.5.2
PKGNAME=	makedepend-95.07.05
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/

MAINTAINER=	joey@OpenBSD.ORG

WRKSRC=		${WRKDIR}/${DISTNAME}/makedepend
GNU_CONFIGURE=	YES

MAN1=		makedepend.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/makedepend ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mkdepend.man ${PREFIX}/man/man1/makedepend.1

.include <bsd.port.mk>
