# $OpenBSD: Makefile,v 1.18 2004/12/16 00:31:26 alek Exp $

COMMENT=	"resend network traffic saved by tcpdump"

DISTNAME=	tcpreplay-1.0.1
CATEGORIES=	net

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

CONFIGURE_STYLE= gnu dest

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpreplay ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/tcpreplay.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
