# $OpenBSD: Makefile,v 1.1.1.1 2000/07/13 08:56:19 camield Exp $

DISTNAME=	dnscache-1.00
HOMEPAGE=	http://cr.yp.to/djbdns.html
CATEGORIES=	net
MAINTAINER=	cd@sentia.nl

# temporary, until DISTNAME changes
PKGNAME=	djbdns-1.00

MASTER_SITES=	http://cr.yp.to/djbdns/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise:${PORTSDIR}/sysutils/daemontools \
		tcpclient:${PORTSDIR}/net/ucspi-tcp

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
