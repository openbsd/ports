# $OpenBSD: Makefile,v 1.5 2000/02/11 00:37:29 espie Exp $
# Whom:           Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	popclient-3.0b6
CATEGORIES=	mail

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	http://www.freebsd.org/~wosch/src/
NEED_VERSION=	1.191

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0

WRKDIST=		${WRKDIR}/popclient-3.0b6
ALL_TARGET=

pre-install:
	${CP} ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1

.include <bsd.port.mk>
