COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.16
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://wiki.github.com/btpd/btpd/

SITES=			https://github.com/downloads/btpd/btpd/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto m pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
