# $OpenBSD: Makefile,v 1.1.1.1 2001/08/07 03:14:39 obecian Exp $

COMMENT=		"traceroute implementation using TCP packets"

DISTNAME=		tcptraceroute-1.2
CATEGORIES=    		net
NEED_VERSION=		1.427

HOMEPAGE=		http://michael.toren.net/code/tcptraceroute/

MAINTAINER=		Mark Grimes <obecian@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://michael.toren.net/code/tcptraceroute/

LIB_DEPENDS=		net::net/libnet

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcptraceroute ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tcptraceroute.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcptraceroute
	${INSTALL_DATA} ${WRKSRC}/examples.txt ${PREFIX}/share/doc/tcptraceroute

.include <bsd.port.mk>
