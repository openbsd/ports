# $OpenBSD: Makefile,v 1.15 2001/10/28 13:05:47 espie Exp $
# Whom:           Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"client for pop2, pop3, apop, rpop"

DISTNAME=	popclient-3.0b6
CATEGORIES=	mail
NEED_VERSION=	1.402
#FAKE=No
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu dest old
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0

ALL_TARGET=

WRKDIST=	${WRKDIR}/popclient-3.0b6

pre-install:
	@cp ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1

.include <bsd.port.mk>
