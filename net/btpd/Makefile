# $OpenBSD: Makefile,v 1.18 2019/07/12 20:48:23 sthen Exp $

COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.16
REVISION=		1
CATEGORIES=		net

MAINTAINER=		Anthony J. Bentley <anthony@anjbe.name>

HOMEPAGE=		http://wiki.github.com/btpd/btpd/

MASTER_SITES=		https://github.com/downloads/btpd/btpd/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto m pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
