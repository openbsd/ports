# OpenBSD makefile for:	netris
# Version required:	0.4
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:32:19 angelos Exp $
#

DISTNAME=		netris-0.4
CATEGORIES=		games
MASTER_SITES=		ftp://ftp.netris.org/pub/netris/

MAINTAINER=		angelos@openbsd.org

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	Configure
MAN1=			netris.1

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
