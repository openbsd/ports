# Makefile for:		ADMsnmp
# Version required:	0.1
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/03/14 18:46:34 dugsong Exp $

PKGNAME=	ADMsnmp-0.1
DISTNAME=	ADMsnmp.0.1

CATEGORIES=	security

MASTER_SITES=	http://el8.org/~antilove/ \
		ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/

MAINTAINER=	dugsong@monkey.org

WRKSRC=		${WRKDIR}/ADMsnmp

NO_CONFIGURE=	yes

do-build:
		(cd ${WRKSRC} ; ${CC} ${CFLAGS} -o ADMsnmp snmp.c)

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/ADMsnmp ${PREFIX}/bin
		${INSTALL_DATA} ${WRKSRC}/snmp.passwd ${PREFIX}/etc/ADMsnmp.passwd

.include <bsd.port.mk>
