# $OpenBSD: Makefile,v 1.3 1999/10/02 19:19:00 brad Exp $

DISTNAME=	netris-0.5
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

MAINTAINER=	angelos@openbsd.org

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= Configure

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
