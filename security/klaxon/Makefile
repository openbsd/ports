# $OpenBSD: Makefile,v 1.1.1.1 2001/03/15 20:54:30 wilfried Exp $

DISTNAME=		klaxon
PKGNAME=		klaxon-1.5
CATEGORIES=     	security

HOMEPAGE=		http://www.eng.auburn.edu/users/doug/second.html

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://ftp.eng.auburn.edu/pub/doug/

ALL_TARGET=		target

do-install:
	${INSTALL} ${WRKBUILD}/klaxon.5x.ident ${PREFIX}/sbin/klaxon

.include <bsd.port.mk>
