# $OpenBSD: Makefile,v 1.4 2004/12/16 00:31:20 alek Exp $
			
COMMENT=		"ARP reply daemon"

DISTNAME=		arpd-0.1
CATEGORIES=    		net

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/arpd

BUILD_DEPENDS=		${LOCALBASE}/lib/libdnet.a::net/libdnet

.include <bsd.port.mk>
