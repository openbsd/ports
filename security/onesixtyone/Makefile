# $OpenBSD: Makefile,v 1.5 2015/06/17 06:16:51 bentley Exp $

COMMENT=	efficient SNMP scanner

DISTNAME=	onesixtyone-0.3.2
CATEGORIES=	security
REVISION=	0

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
WANTLIB=		c

MASTER_SITES=	http://www.phreedom.org/solar/onesixtyone/

NO_TEST=	Yes

do-build:
	@perl -pi -e "s/logf/logfile/g" ${WRKSRC}/onesixtyone.c
	${CC} ${CFLAGS} -o ${WRKSRC}/onesixtyone ${WRKSRC}/onesixtyone.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/onesixtyone ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/onesixtyone
	${INSTALL_DATA} ${WRKSRC}/dict.txt ${PREFIX}/share/onesixtyone

.include <bsd.port.mk> 
