# Makefile for:		ADMsnmp
# Version required:	0.1
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/04/09 17:37:55 espie Exp $

PKGNAME=	ADMsnmp-0.1
DISTNAME=	ADMsnmp.0.1

CATEGORIES=	security
NEED_VERSION=	1.191
FAKE=No

MASTER_SITES=	http://el8.org/~antilove/ \
		ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/

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
