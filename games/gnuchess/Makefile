# OpenBSD makefile for:	Gnu Chess
# Version required:	4.0pl77
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 02:59:10 angelos Exp $
#

DISTNAME=	gnuchess-4.0.pl77
PKGNAME=	gnuchess-4.0.77
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	angelos@openbsd.org

HAS_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}/src
#CONFIGURE_SCRIPT=	src/configure
#CONFIGURE_ARGS=		-sde -Dprefix=${PREFIX}
MAN6=		game.6 gnuan.6 gnuchess.6 postprint.6

.include <bsd.port.mk>
