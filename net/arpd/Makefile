# $OpenBSD: Makefile,v 1.6 2005/09/10 09:18:47 espie Exp $
			
COMMENT=		"ARP reply daemon"

DISTNAME=		arpd-0.2
PKGNAME=		${DISTNAME}p0
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

LIB_DEPENDS=		dnet::net/libdnet

.include <bsd.port.mk>
