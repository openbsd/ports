# OpenBSD makefile for:	gnugo
# Version required:	1.2
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:33:35 angelos Exp $
#

DISTNAME=	gnugo-1.2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/gnugo
ALL_TARGET=	gnugo
MAKE_FLAGS+=	CFLAGS="${CFLAGS}" -f

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnugo ${PREFIX}/bin

.include <bsd.port.mk>
