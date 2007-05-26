# $OpenBSD: Makefile,v 1.12 2007/05/26 22:06:19 rui Exp $

COMMENT=		"traceroute implementation using TCP packets"

DISTNAME=		tcptraceroute-1.5beta7
CATEGORIES=    		net

HOMEPAGE=		http://michael.toren.net/code/tcptraceroute/

MAINTAINER=		Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libnet=${PREFIX} \
			--enable-noselect-default

MASTER_SITES=		http://michael.toren.net/code/tcptraceroute/

LIB_DEPENDS=		lib/libnet-1.1/net.=11:libnet-1.1*:net/libnet/1.1

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>
