# $OpenBSD: Makefile,v 1.3 2001/07/02 16:08:00 lebel Exp $

COMMENT=	"small service wedge to do ident lookup on connecting party"

DISTNAME=		klaxon
PKGNAME=		klaxon-1.5
CATEGORIES=     	security
NEED_VERSION=		1.402

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
	@${STRIP} ${PREFIX}/sbin/klaxon

.include <bsd.port.mk>
