# $OpenBSD: Makefile,v 1.5 2002/05/11 00:31:23 espie Exp $

COMMENT=		"traceroute implementation using TCP packets"

DISTNAME=		tcptraceroute-1.2
CATEGORIES=    		net
NEED_VERSION=		1.427

HOMEPAGE=		http://michael.toren.net/code/tcptraceroute/

MAINTAINER=		Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://michael.toren.net/code/tcptraceroute/

LIB_DEPENDS=		net::net/libnet

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcptraceroute ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/tcptraceroute.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcptraceroute
	${INSTALL_DATA} ${WRKSRC}/examples.txt ${PREFIX}/share/doc/tcptraceroute

.include <bsd.port.mk>
