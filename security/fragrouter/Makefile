# $OpenBSD: Makefile,v 1.33 2019/07/12 20:49:02 sthen Exp $

COMMENT=	tool for testing network IDS implementations

DISTNAME=	fragrouter-1.6
REVISION=	3
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/libpcap-0.4 ${WRKSRC}/Libnet-0.99b

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fragrouter ${PREFIX}/sbin
	${INSTALL_MAN}	${WRKSRC}/fragrouter.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
