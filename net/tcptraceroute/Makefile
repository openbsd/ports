# $OpenBSD: Makefile,v 1.11 2005/05/24 00:10:44 mjc Exp $

COMMENT=		"traceroute implementation using TCP packets"

DISTNAME=		tcptraceroute-1.4
PKGNAME=		${DISTNAME}p1
CATEGORIES=    		net

HOMEPAGE=		http://michael.toren.net/code/tcptraceroute/

MAINTAINER=		Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

MASTER_SITES=		http://michael.toren.net/code/tcptraceroute/

LIB_DEPENDS=		lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS}"

ALL_TARGET=

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcptraceroute ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/tcptraceroute.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tcptraceroute
	${INSTALL_DATA} ${WRKSRC}/examples.txt ${PREFIX}/share/examples/tcptraceroute

.include <bsd.port.mk>
