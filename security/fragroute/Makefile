# $OpenBSD: Makefile,v 1.21 2014/01/01 20:46:28 naddy Exp $

COMMENT=		intercept, modify, and rewrite egress traffic

DISTNAME=		fragroute-1.2
REVISION =		7
CATEGORIES=    		security net

HOMEPAGE=		http://www.monkey.org/~dugsong/fragroute/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c event pcap dnet>=1

MASTER_SITES=		http://monkey.org/~dugsong/fragroute/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		 --with-libevent=/usr

LIB_DEPENDS=		net/libdnet

post-install:
			${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fragroute/
			${INSTALL_DATA} ${WRKDIST}/fragroute.conf \
			  ${PREFIX}/share/examples/fragroute/

.include <bsd.port.mk>
