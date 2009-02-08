# $OpenBSD: Makefile,v 1.5 2009/02/08 14:36:01 sthen Exp $

COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.14
CATEGORIES=		net

MAINTAINER=		Martin Cronier <hex29a@openbsd.se>

HOMEPAGE=		http://www.murmeldjur.se/btpd/

MASTER_SITES=		${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
