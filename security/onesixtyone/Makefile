# $OpenBSD: Makefile,v 1.1.1.1 2004/04/09 12:18:55 sturm Exp $

COMMENT=	"efficient SNMP scanner"

DISTNAME=	onesixtyone-0.3.2
CATEGORIES=	security

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP= 	Yes

MASTER_SITES=	http://www.phreedom.org/solar/onesixtyone/

NO_REGRESS=	Yes

do-build:
	@perl -pi -e "s/logf/logfile/g" ${WRKSRC}/onesixtyone.c
	${CC} ${CFLAGS} -o ${WRKSRC}/onesixtyone ${WRKSRC}/onesixtyone.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/onesixtyone ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/onesixtyone
	${INSTALL_DATA} ${WRKSRC}/dict.txt ${PREFIX}/share/onesixtyone

.include <bsd.port.mk> 
