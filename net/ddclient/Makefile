# $OpenBSD: Makefile,v 1.4 2004/02/02 17:35:01 sturm Exp $

COMMENT=		"Dynamic DNS service update client"

DISTNAME=		ddclient-3.6.3
CATEGORIES=		net

MAINTAINER=     	Sam Smith <s@msmith.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   	http://members.rogers.com/ddclient/pub/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:	
	${INSTALL_SCRIPT} ${WRKSRC}/ddclient	${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ddclient
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddclient
	${INSTALL_DATA} ${WRKSRC}/sample* ${PREFIX}/share/examples/ddclient 
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/ddclient 

.include <bsd.port.mk>
