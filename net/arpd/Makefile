# $OpenBSD: Makefile,v 1.1.1.1 2002/05/20 22:23:25 jsyn Exp $
			
COMMENT=		"ARP reply daemon"

DISTNAME=		arpd-0.1
CATEGORIES=    		net
NEED_VERSION=		1.531

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/arpd

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent \
			${LOCALBASE}/lib/libdnet.a::net/libdnet

.include <bsd.port.mk>
