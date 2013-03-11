# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:24 espie Exp $

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
USE_GROFF =		Yes

LIB_DEPENDS=		net/libdnet

post-install:
			${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fragroute/
			${INSTALL_DATA} ${WRKDIST}/fragroute.conf \
			  ${PREFIX}/share/examples/fragroute/

.include <bsd.port.mk>
