# $OpenBSD: Makefile,v 1.11 2010/10/18 18:36:46 espie Exp $

COMMENT=		BitTorrent Protocol Daemon

DISTNAME=		btpd-0.16
CATEGORIES=		net

MAINTAINER=		Nicholas Marriott <nicm@openbsd.org>

HOMEPAGE=		http://wiki.github.com/btpd/btpd/

MASTER_SITES=		http://github.com/downloads/btpd/btpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m pthread

CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/btpd

.include <bsd.port.mk>
