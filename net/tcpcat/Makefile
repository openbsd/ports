# $OpenBSD: Makefile,v 1.6 2007/09/15 22:36:59 merdely Exp $

COMMENT=		utility for sending/receiving data over TCP stream

VERSION=		1.2.0
DISTNAME=		tcpcat-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.gusnet.cx:8080/proj/tcpcat/

MASTER_SITES=		${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpcat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpcat

.include <bsd.port.mk>
