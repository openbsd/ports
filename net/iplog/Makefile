# $OpenBSD: Makefile,v 1.11 2015/05/17 11:42:17 sthen Exp $

COMMENT=	TCP/IP traffic logging tool

DISTNAME=	iplog-2.2.3
REVISION=	0
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap pthread

USE_GMAKE=	Yes
USE_GROFF =	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iplog
	${INSTALL_DATA} ${WRKSRC}/example-iplog.conf \
		${PREFIX}/share/examples/iplog/iplog.conf

.include <bsd.port.mk>
