# $OpenBSD: Makefile,v 1.2 2005/12/16 22:17:25 cathcart Exp $

COMMENT=		"program for indexing & searching email"

DISTNAME=		mairix-0.17
CATEGORIES=		mail
HOMEPAGE=		http://www.rpcurnow.force9.co.uk/mairix/

MAINTAINER=		David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://www.rpcurnow.force9.co.uk/mairix/

WANTLIB=		c

BUILD_DEPENDS=		:bison-*:devel/bison

CONFIGURE_STYLE=	simple
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mairix ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mairix
	${INSTALL_DATA} ${WRKSRC}/mairix.txt ${PREFIX}/share/doc/mairix

.include <bsd.port.mk>
