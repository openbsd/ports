# $OpenBSD: Makefile,v 1.8 2013/05/27 04:51:15 kirby Exp $

COMMENT=		utility for sending/receiving data over TCP stream

DISTNAME=		tcpcat-1.2.0
REVISION= 		0
CATEGORIES=		net

HOMEPAGE=		http://sourceforge.net/projects/tcpcat/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tcpcat/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpcat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpcat

.include <bsd.port.mk>
