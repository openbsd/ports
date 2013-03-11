# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:30 espie Exp $

COMMENT=		flashes gpio led whenever pf logs to pflog0

DISTNAME=		gpioflicker-0.3
CATEGORIES=		sysutils

HOMEPAGE=		http://www.pro-bono-publico.de/openbsd/gpio/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c util

MASTER_SITES=		${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gpioflicker ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/gpioflicker.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
