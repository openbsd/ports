# $OpenBSD: Makefile,v 1.6 2019/07/12 21:15:36 sthen Exp $

COMMENT=	efficient SNMP scanner

DISTNAME=	onesixtyone-0.3.2
CATEGORIES=	security
REVISION=	0

# GPL
PERMIT_PACKAGE=	Yes
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
