# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:57 espie Exp $

COMMENT=	report network interface statistics

DISTNAME=	tcpstat-1.5
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www.frenchfries.net/paul/tcpstat/

HOMEPAGE=	http://www.frenchfries.net/paul/tcpstat/
MAINTAINER=	Mark Lumsden <mark@cyodesigns.com>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcap 

USE_GROFF =	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tcpstat
	${INSTALL_DATA} ${WRKSRC}/doc/Tips_and_Tricks.txt \
		${PREFIX}/share/examples/tcpstat

.include <bsd.port.mk>
