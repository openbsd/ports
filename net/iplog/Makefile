# $OpenBSD: Makefile,v 1.13 2017/09/25 09:16:13 robert Exp $

COMMENT=	TCP/IP traffic logging tool

DISTNAME=	iplog-2.2.3
REVISION=	2
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap pthread

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iplog
	${INSTALL_DATA} ${WRKSRC}/example-iplog.conf \
		${PREFIX}/share/examples/iplog/iplog.conf

.include <bsd.port.mk>
