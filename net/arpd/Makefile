# $OpenBSD: Makefile,v 1.14 2010/11/19 22:31:32 espie Exp $
			
COMMENT=		ARP reply daemon

DISTNAME=		arpd-0.2
REVISION=		2
CATEGORIES=    		net

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap event dnet

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
USE_GROFF =		Yes

WRKDIST=		${WRKDIR}/arpd

LIB_DEPENDS=		net/libdnet

.include <bsd.port.mk>
