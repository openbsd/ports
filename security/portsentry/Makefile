# $OpenBSD: Makefile,v 1.3 2001/11/26 16:06:58 kevlo Exp $

COMMENT=	"port scan detection and active defense"

DISTNAME=	portsentry-1.1
CATEGORIES=	security
NEED_VERSION=	1.500

HOMEPAGE=	http://www.psionic.com/abacus/portsentry

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP= 	Yes

MASTER_SITES=	http://www.psionic.com/tools/

ALL_TARGET=	openbsd

DOCS=	README.install README.methods README.stealth

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/portsentry
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/portsentry
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/portsentry
	${INSTALL_PROGRAM} ${WRKSRC}/portsentry ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/portsentry.conf ${PREFIX}/share/examples/portsentry/portsentry.conf-sample
	${INSTALL_DATA} ${WRKSRC}/portsentry.ignore ${PREFIX}/lib/portsentry
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/portsentry

.include <bsd.port.mk> 
