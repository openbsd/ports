# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:47 espie Exp $
# Whom:           Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	popclient-3.0b6
CATEGORIES=	mail
NEED_VERSION=	1.191

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.freebsd.org/~wosch/src/

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0

WRKDIST=		${WRKDIR}/popclient-3.0b6
ALL_TARGET=

pre-install:
	cp ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1

.include <bsd.port.mk>
