# $OpenBSD: Makefile,v 1.5 2000/11/20 10:02:02 camield Exp $

DISTNAME=	djbdns-1.02
HOMEPAGE=	http://cr.yp.to/djbdns.html
CATEGORIES=	net
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES=	http://cr.yp.to/djbdns/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise::sysutils/daemontools \
		tcpclient::net/ucspi-tcp

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
