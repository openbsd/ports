# $OpenBSD: Makefile,v 1.4 1999/04/06 19:18:45 rohee Exp $
# Whom:           Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	popclient-3.0b6
CATEGORIES=	mail

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	http://www.freebsd.org/~wosch/src/

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0

WRKSRC=		${WRKDIR}/popclient-3.0b6
ALL_TARGET=

pre-install:
	${CP} ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1

.include <bsd.port.mk>
