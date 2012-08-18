# $OpenBSD: Makefile,v 1.6 2012/08/18 12:41:38 ajacoutot Exp $

COMMENT=	ncurses-based MUD client with triggers, aliases, colors

DISTNAME=	mudix-4.3
CATEGORIES=	net games
HOMEPAGE=	http://dw.nl.eu.org/mudix.html

MAINTAINER=	Mathieu Braem <majeu@bsdaemon.be>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses panel

MASTER_SITES=	http://dw.nl.eu.org/mudix/

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mudix ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mudix
	${INSTALL_DATA} ${WRKSRC}/sample.usr ${PREFIX}/share/mudix

NO_REGRESS=	Yes

.include <bsd.port.mk>
