# Makefile for:		ADMsnmp
# Version required:	0.1
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/02/15 05:05:08 turan Exp $

PKGNAME=	ADMsnmp-0.1
DISTNAME=	ADMsnmp.0.1

CATEGORIES=	security

MASTER_SITES=	http://el8.org/~antilove/ \
		ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}/ADMsnmp

NO_CONFIGURE=	yes

do-build:
		(cd ${WRKSRC} ; ${CC} ${CFLAGS} -o ADMsnmp snmp.c)

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/ADMsnmp ${PREFIX}/bin
		${INSTALL_DATA_DIR} ${PREFIX}/lib/ADMsnmp
		${INSTALL_DATA} ${WRKSRC}/snmp.passwd ${PREFIX}/lib/ADMsnmp

.include <bsd.port.mk>
