# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:45 espie Exp $

COMMENT=		ARP reply daemon

DISTNAME=		arpd-0.2
REVISION=		3
CATEGORIES=    		net

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap event dnet

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
USE_GROFF =		Yes

WRKDIST=		${WRKDIR}/arpd

LIB_DEPENDS=		net/libdnet

.include <bsd.port.mk>
