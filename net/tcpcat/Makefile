# $OpenBSD: Makefile,v 1.1.1.1 2002/07/31 23:58:57 pvalchev Exp $

COMMENT=		"utility for sending/receiving data over TCP stream"
CATEGORIES=		net
DISTNAME=		tcpcat-1.2.0
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.gusnet.cx/proj/tcpcat/

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

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
