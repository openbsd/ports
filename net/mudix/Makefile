# $OpenBSD: Makefile,v 1.1.1.1 2002/05/10 16:05:50 lebel Exp $
# $FreeBSD: ports/net/mudix/Makefile,v 1.6 2001/06/22 19:39:12 dwcjr Exp $
# Original from: will

COMMENT=	"ncurses-based MUD client with triggers, aliases, colors"

DISTNAME=	mudix-4.1
CATEGORIES=	net games
NEED_VERSION=	1.525

HOMEPAGE=	http://dwizardry.dhs.org/mudix.html
MAINTAINER=	Mathieu Braem <majeu@bsdaemon.be>
MASTER_SITES=	http://dwizardry.dhs.org/mudix/

CONFIGURE_STYLE=gnu

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mudix ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mudix
	${INSTALL_DATA} ${WRKSRC}/sample.usr ${PREFIX}/share/mudix

NO_REGRESS=	Yes

.include <bsd.port.mk>
