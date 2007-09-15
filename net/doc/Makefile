# $OpenBSD: Makefile,v 1.8 2007/09/15 22:36:53 merdely Exp $

COMMENT=	automated domain testing tool

DISTNAME=	doc-2.2.3
CATEGORIES=    	net

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.shub-internet.org/pub/shub/brad/dns/

do-build:
	mv ${WRKSRC}/doc ${WRKSRC}/doc.dist
	sed "s,y0y0y0,${PREFIX}/libexec/doc/," ${WRKSRC}/doc.dist >${WRKSRC}/doc

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/doc
	${INSTALL_DATA} ${WRKSRC}/*.awk ${PREFIX}/libexec/doc
	${INSTALL_PROGRAM} ${WRKSRC}/doc ${PREFIX}/bin/doc
	${INSTALL_MAN} ${WRKSRC}/doc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
