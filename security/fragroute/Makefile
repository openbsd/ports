# $OpenBSD: Makefile,v 1.1.1.1 2002/05/20 10:50:12 jsyn Exp $
			
COMMENT=		"intercept, modify, and rewrite egress traffic"

DISTNAME=		fragroute-1.2
CATEGORIES=    		security net
NEED_VERSION=		1.531

HOMEPAGE=		http://www.monkey.org/~dugsong/fragroute/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~dugsong/fragroute/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent \
			${LOCALBASE}/lib/libdnet.a::net/libdnet

.include <bsd.port.mk>
