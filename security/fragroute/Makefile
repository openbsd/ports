# $OpenBSD: Makefile,v 1.9 2005/07/13 18:47:02 aanriot Exp $
			
COMMENT=		"intercept, modify, and rewrite egress traffic"

DISTNAME=		fragroute-1.2
PKGNAME=		${DISTNAME}p3
CATEGORIES=    		security net

HOMEPAGE=		http://www.monkey.org/~dugsong/fragroute/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=		http://monkey.org/~dugsong/fragroute/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		 --with-libevent=/usr

LIB_DEPENDS=		dnet.1::net/libdnet

post-install:
			${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fragroute/
			${INSTALL_DATA} ${WRKDIST}/fragroute.conf \
			  ${PREFIX}/share/examples/fragroute/

.include <bsd.port.mk>
