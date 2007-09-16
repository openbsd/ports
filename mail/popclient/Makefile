# $OpenBSD: Makefile,v 1.19 2007/09/16 00:17:06 merdely Exp $

COMMENT=	client for pop2, pop3, apop, rpop

DISTNAME=	popclient-3.0b6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu dest old
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0

ALL_TARGET=

WRKDIST=	${WRKDIR}/popclient-3.0b6

pre-install:
	@cp ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1

.include <bsd.port.mk>
