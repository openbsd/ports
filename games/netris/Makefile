# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:55 marc Exp $
#

DISTNAME=		netris-0.4
CATEGORIES=		games

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		ftp://ftp.netris.org/pub/netris/

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	Configure

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
