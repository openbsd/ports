# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:55 marc Exp $
#

DISTNAME=	gnugo-1.2
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_GNU}

WRKSRC=		${WRKDIR}/gnugo
ALL_TARGET=	gnugo
MAKE_FLAGS+=	CFLAGS="${CFLAGS}" -f

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnugo ${PREFIX}/bin

.include <bsd.port.mk>
