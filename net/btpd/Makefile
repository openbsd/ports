# $OpenBSD: Makefile,v 1.9 2010/07/12 22:07:37 sthen Exp $

COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.15
REVISION=		1
CATEGORIES=		net

MAINTAINER=		Nicholas Marriott <nicm@openbsd.org>

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
