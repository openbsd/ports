# $OpenBSD: Makefile,v 1.6 2005/10/14 07:58:11 bernd Exp $

COMMENT=		"Dynamic DNS service update client"

DISTNAME=		ddclient-3.6.6
CATEGORIES=		net

HOMEPAGE=		http://ddclient.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ddclient/}

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:	
	${INSTALL_SCRIPT} ${WRKSRC}/ddclient ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ddclient
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddclient
	${INSTALL_DATA} ${WRKSRC}/sample* ${PREFIX}/share/examples/ddclient 
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/ddclient 

.include <bsd.port.mk>
