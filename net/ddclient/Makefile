# $OpenBSD: Makefile,v 1.3 2003/06/20 22:04:32 jolan Exp $

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

do-install:	
	${INSTALL_SCRIPT} ${WRKSRC}/ddclient	${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ddclient
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddclient
	${INSTALL_DATA} ${WRKSRC}/sample* ${PREFIX}/share/examples/ddclient 
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/ddclient 

.include <bsd.port.mk>
