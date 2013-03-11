# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:57 espie Exp $

COMMENT=		utility for sending/receiving data over TCP stream

VERSION=		1.2.0
DISTNAME=		tcpcat-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.gusnet.cx:8080/proj/tcpcat/

MASTER_SITES=		${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpcat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpcat

.include <bsd.port.mk>
