# $OpenBSD: Makefile,v 1.1.1.1 2000/03/27 08:32:24 camield Exp $

DISTNAME=	dnscache-1.00
HOMEPAGE=	http://cr.yp.to/dnscache.html
CATEGORIES=	net
MAINTAINER=	cd@sentia.nl

MASTER_SITES=	http://cr.yp.to/dnscache/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

PERMIT_PACKAGE_CDROM=	'no license'
PERMIT_PACKAGE_FTP=	'no license'
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_CONFIGURE=	Yes
ALL_TARGET=	default WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

FAKE=	Yes

RUN_DEPENDS=	supervise:${PORTSDIR}/sysutils/daemontools \
		tcpclient:${PORTSDIR}/net/ucspi-tcp

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
