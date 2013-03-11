# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:57 espie Exp $

COMMENT=	tool for extracting and gluing pcap (tcpdump) files

DISTNAME=	tcpslice-2008.05.19
PKGNAME=        ${DISTNAME:S/.//g}
REVISION =	0
CATEGORIES=	net

MASTER_SITES=	http://www.tcpdump.org/weekly/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/tcpslice.1 ${PREFIX}/man/man1/tcpslice.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/tcpslice
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tcpslice

.include <bsd.port.mk>
