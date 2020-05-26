# $OpenBSD: Makefile,v 1.8 2020/05/26 22:17:54 sthen Exp $

COMMENT=	efficient SNMP scanner

DISTNAME=	onesixtyone-0.3.2
CATEGORIES=	security
REVISION=	2

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

HOMEPAGE=	http://www.phreedom.org/software/onesixtyone/
MASTER_SITES=	http://www.phreedom.org/software/onesixtyone/releases/

NO_TEST=	Yes

do-build:
	@perl -pi -e "s/logf/logfile/g" ${WRKSRC}/onesixtyone.c
	${CC} ${CFLAGS} -o ${WRKSRC}/onesixtyone ${WRKSRC}/onesixtyone.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/onesixtyone ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/onesixtyone
	${INSTALL_DATA} ${WRKSRC}/dict.txt ${PREFIX}/share/onesixtyone

.include <bsd.port.mk>
