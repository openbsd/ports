# $OpenBSD: Makefile,v 1.19 2005/05/24 00:08:29 mjc Exp $

COMMENT=	"resend network traffic saved by tcpdump"

DISTNAME=	tcpreplay-1.0.1
CATEGORIES=	net

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

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
