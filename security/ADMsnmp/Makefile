# $OpenBSD: Makefile,v 1.17 2002/05/13 08:36:33 jsyn Exp $

COMMENT=		"SNMP audit scanner"

DISTNAME=       	ADMsnmp.0.1
PKGNAME=        	ADMsnmp-0.1
CATEGORIES=		security
NEED_VERSION=		1.528
EXTRACT_SUFX=		.tgz

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=   "no license"
PERMIT_PACKAGE_FTP=     "no license"
PERMIT_DISTFILES_CDROM= "no license"
PERMIT_DISTFILES_FTP=   "no license"

MASTER_SITES=		ftp://adm.freelsd.net/pub/ADM/ \
			http://adm.freelsd.net/ADM/ \
			${MASTER_SITE_PACKETSTORM:=groups/ADM/}

WRKDIST=		${WRKDIR}/ADMsnmp

NO_REGRESS=		Yes

do-build:
	cd ${WRKSRC} ; ${CC} ${CFLAGS} \
		-DPORTSHAREDIR="${TRUEPREFIX}/share/ADMsnmp" \
		-o ADMsnmp snmp.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ADMsnmp ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ADMsnmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ADMsnmp
	${INSTALL_DATA} ${WRKSRC}/snmp.passwd ${PREFIX}/share/ADMsnmp
	${INSTALL_DATA} ${WRKSRC}/ADMsnmp.README ${PREFIX}/share/doc/ADMsnmp

.include <bsd.port.mk>
