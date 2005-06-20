# $OpenBSD: Makefile,v 1.1.1.1 2005/06/20 21:35:23 niallo Exp $

COMMENT=		"program for indexing & searching email"

DISTNAME=		mairix-0.16.1
CATEGORIES=		mail
HOMEPAGE=		http://www.rpcurnow.force9.co.uk/mairix/

MAINTAINER=		David Cathcart <david@cathcart.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://www.rpcurnow.force9.co.uk/mairix/
EXTRACT_SUFX=		.tar.gz

WANTLIB=		c

BUILD_DEPENDS=		:bison-*:devel/bison

CONFIGURE_STYLE=	simple
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mairix ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mairix
	${INSTALL_DATA} ${WRKSRC}/mairix.txt ${PREFIX}/share/doc/mairix

.include <bsd.port.mk>
