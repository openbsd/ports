# $OpenBSD: Makefile,v 1.3 2001/04/12 15:59:18 bmc Exp $

COMMENT=	"tool for extracting and gluing pcap (tcpdump) files"

DISTNAME=	tcpslice-1.1a3
CATEGORIES=	net
NEED_VERSION=	1.394
MASTER_SITES=	ftp://ftp.ee.lbl.gov/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/tcpslice.1 ${PREFIX}/man/man1/tcpslice.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpslice

.include <bsd.port.mk>
