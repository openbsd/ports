# $OpenBSD: Makefile,v 1.1.1.1 2002/03/24 01:59:24 jsyn Exp $

COMMENT=		"Dynamic DNS service update client"

DISTNAME=		ddclient-3.6.2
CATEGORIES=		net
NEED_VERSION=		1.515

HOMEPAGE=       	http://burry.ca:4141/ddclient/

MAINTAINER=     	Sam Smith <s@msmith.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   	http://burry.ca:4141/ddclient/

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:	
	${INSTALL_SCRIPT} ${WRKSRC}/ddclient	${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ddclient
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddclient
	${INSTALL_DATA} ${WRKSRC}/sample* ${PREFIX}/share/examples/ddclient 
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/ddclient 

.include <bsd.port.mk>
