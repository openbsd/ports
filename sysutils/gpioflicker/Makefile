# $OpenBSD: Makefile,v 1.6 2012/01/26 19:31:38 sthen Exp $

COMMENT=		flashes gpio led whenever pf logs to pflog0

DISTNAME=		gpioflicker-0.3
CATEGORIES=		sysutils

HOMEPAGE=		http://www.pro-bono-publico.de/openbsd/gpio/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c util

MASTER_SITES=		${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gpioflicker ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/gpioflicker.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
