# $OpenBSD: Makefile,v 1.9 2000/03/31 19:07:48 brad Exp $
# Whom:           Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	popclient-3.0b6
CATEGORIES=	mail
NEED_VERSION=	1.191
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0

ALL_TARGET=

WRKDIST=	${WRKDIR}/popclient-3.0b6

pre-install:
	@cp ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1

.include <bsd.port.mk>
