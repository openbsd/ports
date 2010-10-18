# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:58 espie Exp $

COMMENT=	report network interface statistics

DISTNAME=	tcpstat-1.5
CATEGORIES=	net
MASTER_SITES=	http://www.frenchfries.net/paul/tcpstat/

HOMEPAGE=	http://www.frenchfries.net/paul/tcpstat/
MAINTAINER=	Mark Lumsden <mark@cyodesigns.com>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap 

USE_GROFF =	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tcpstat
	${INSTALL_DATA} ${WRKSRC}/doc/Tips_and_Tricks.txt \
		${PREFIX}/share/examples/tcpstat

.include <bsd.port.mk>
