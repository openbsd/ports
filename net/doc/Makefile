# $OpenBSD: Makefile,v 1.3 2001/11/13 22:13:24 espie Exp $

COMMENT=	automated domain testing tool

DISTNAME=	doc-2.2.3
CATEGORIES=    	net
NEED_VERSION=	1.496

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.shub-internet.org/pub/shub/brad/dns/

RUN_DEPENDS=		::net/bind9

do-build:
	mv ${WRKSRC}/doc ${WRKSRC}/doc.dist
	sed "s,y0y0y0,${PREFIX}/libexec/doc/," ${WRKSRC}/doc.dist >${WRKSRC}/doc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/doc
	${INSTALL_DATA} ${WRKSRC}/*.awk ${PREFIX}/libexec/doc
	${INSTALL_PROGRAM} ${WRKSRC}/doc ${PREFIX}/bin/doc
	${INSTALL_MAN} ${WRKSRC}/doc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
