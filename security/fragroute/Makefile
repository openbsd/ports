# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:02 sthen Exp $

COMMENT=		intercept, modify, and rewrite egress traffic

DISTNAME=		fragroute-1.2
REVISION =		8
CATEGORIES=    		security net

HOMEPAGE=		http://www.monkey.org/~dugsong/fragroute/

# BSD
PERMIT_PACKAGE=	Yes
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
