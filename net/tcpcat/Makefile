# $OpenBSD: Makefile,v 1.2 2002/11/22 02:37:37 margarida Exp $

COMMENT=		"utility for sending/receiving data over TCP stream"

VERSION=		1.2.0
DISTNAME=		tcpcat-${VERSION}
CATEGORIES=		net

MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.gusnet.cx/proj/tcpcat/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpcat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpcat

.include <bsd.port.mk>
