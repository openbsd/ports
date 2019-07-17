# $OpenBSD: Makefile,v 1.13 2019/07/17 14:46:33 danj Exp $

COMMENT=	automated domain testing tool

DISTNAME=	doc-2.2.3
CATEGORIES=    	net
REVISION=	0

PERMIT_PACKAGE=	Yes

MASTER_SITES=		ftp://ftp.shub-internet.org/pub/shub/brad/dns/

do-build:
	mv ${WRKSRC}/doc ${WRKSRC}/doc.dist
	sed "s,y0y0y0,${PREFIX}/libexec/doc/," ${WRKSRC}/doc.dist >${WRKSRC}/doc

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/doc
	${INSTALL_DATA} ${WRKSRC}/*.awk ${PREFIX}/libexec/doc
	${INSTALL_PROGRAM} ${WRKSRC}/doc ${PREFIX}/bin/doc
	${INSTALL_MAN} ${WRKSRC}/doc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
