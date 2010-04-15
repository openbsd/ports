# $OpenBSD: Makefile,v 1.25 2010/04/15 13:27:48 ajacoutot Exp $

COMMENT=	tool for testing network IDS implementations

DISTNAME=	fragrouter-1.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/libpcap-0.4 ${WRKSRC}/Libnet-0.99b

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fragrouter ${PREFIX}/sbin
	${INSTALL_MAN}	${WRKSRC}/fragrouter.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
