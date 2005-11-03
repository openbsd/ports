# $OpenBSD: Makefile,v 1.8 2005/11/03 18:28:56 naddy Exp $
			
COMMENT=		"ARP reply daemon"

DISTNAME=		arpd-0.2
PKGNAME=		${DISTNAME}p1
CATEGORIES=    		net

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap event

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/arpd

LIB_DEPENDS=		dnet::net/libdnet

.include <bsd.port.mk>
