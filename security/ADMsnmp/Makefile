# Makefile for:		ADMsnmp
# Version required:	0.1
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.12 2001/06/20 01:43:33 pvalchev Exp $

COMMENT=	"SNMP audit scanner"

PKGNAME=	ADMsnmp-0.1
DISTNAME=	ADMsnmp.0.1

CATEGORIES=	security
NEED_VERSION=	1.402

MASTER_SITES=	http://el8.org/~antilove/ \
		ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/

MAINTAINER=	Dug Song <dugsong@monkey.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/ADMsnmp

do-build:
		cd ${WRKSRC} ; ${CC} ${CFLAGS} -o ADMsnmp snmp.c

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/ADMsnmp ${PREFIX}/bin
		${INSTALL_DATA_DIR} ${PREFIX}/lib/ADMsnmp
		${INSTALL_DATA} ${WRKSRC}/snmp.passwd ${PREFIX}/lib/ADMsnmp

.include <bsd.port.mk>
