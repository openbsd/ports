# $OpenBSD: Makefile,v 1.1.1.1 2001/03/06 07:26:59 kevlo Exp $

DISTNAME=	portsentry-1.0
CATEGORIES=	security
NEED_VERSION=	1.358

HOMEPAGE=	http://www.psionic.com/abacus/portsentry

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP= 	Yes

MASTER_SITES=	http://www.psionic.com/tools/

ALL_TARGET=	openbsd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/portsentry
	${INSTALL_PROGRAM} ${WRKSRC}/portsentry ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/portsentry.conf ${PREFIX}/lib/portsentry
	${INSTALL_DATA} ${WRKSRC}/portsentry.ignore ${PREFIX}/lib/portsentry

.include <bsd.port.mk> 
