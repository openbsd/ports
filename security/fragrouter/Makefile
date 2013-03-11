# $OpenBSD: Makefile,v 1.29 2013/03/11 11:41:24 espie Exp $

COMMENT=	tool for testing network IDS implementations

DISTNAME=	fragrouter-1.6
REVISION =	1
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/libpcap-0.4 ${WRKSRC}/Libnet-0.99b

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fragrouter ${PREFIX}/sbin
	${INSTALL_MAN}	${WRKSRC}/fragrouter.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
