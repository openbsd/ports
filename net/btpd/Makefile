# $OpenBSD: Makefile,v 1.16 2015/05/15 08:59:08 bentley Exp $

COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.16
REVISION=		0
CATEGORIES=		net

MAINTAINER=		Anthony J. Bentley <anthony@cathet.us>

HOMEPAGE=		http://wiki.github.com/btpd/btpd/

MASTER_SITES=		https://github.com/downloads/btpd/btpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
