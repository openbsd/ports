# $OpenBSD: Makefile,v 1.2 2001/05/06 03:46:15 lebel Exp $

COMMENT=	"port scan detection and active defense"

DISTNAME=	portsentry-1.0
CATEGORIES=	security
NEED_VERSION=	1.402

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
