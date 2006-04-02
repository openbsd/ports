# $OpenBSD: Makefile,v 1.6 2006/04/02 14:45:10 sturm Exp $

COMMENT=	"tool for extracting and gluing pcap (tcpdump) files"

DISTNAME=	tcpslice-1.2a3
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.ee.lbl.gov/

MAINTAINER=	Rui Reis <rui@rui.cx>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/tcpslice.1 ${PREFIX}/man/man1/tcpslice.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpslice

.include <bsd.port.mk>
