# $OpenBSD: Makefile,v 1.8 2019/05/06 19:51:38 danj Exp $

COMMENT=	ncurses-based MUD client with triggers, aliases, colors

DISTNAME=	mudix-4.3
CATEGORIES=	net games
HOMEPAGE=	http://dw.nl.eu.org/mudix.html
REVISION=	0

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses panel

MASTER_SITES=	http://dw.nl.eu.org/mudix/

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mudix ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mudix
	${INSTALL_DATA} ${WRKSRC}/sample.usr ${PREFIX}/share/mudix

NO_TEST=	Yes

.include <bsd.port.mk>
