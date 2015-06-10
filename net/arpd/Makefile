# $OpenBSD: Makefile,v 1.19 2015/06/10 11:05:02 jca Exp $

COMMENT=		ARP reply daemon

DISTNAME=		arpd-0.2
REVISION=		4
CATEGORIES=    		net

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap event dnet

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/arpd

LIB_DEPENDS=		net/libdnet

.include <bsd.port.mk>
