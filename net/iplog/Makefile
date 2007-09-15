# $OpenBSD: Makefile,v 1.7 2007/09/15 22:36:54 merdely Exp $

COMMENT=	TCP/IP traffic logging tool

DISTNAME=	iplog-2.2.3
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap pthread

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iplog
	${INSTALL_DATA} ${WRKSRC}/example-iplog.conf \
		${PREFIX}/share/examples/iplog/iplog.conf

.include <bsd.port.mk>
