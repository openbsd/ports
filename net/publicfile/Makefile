# $OpenBSD: Makefile,v 1.1.1.1 2000/02/28 09:32:22 camield Exp $

DISTNAME=	publicfile-0.52
CATEGORIES=	net
MAINTAINER=	cd@sentia.nl
HOMEPAGE=	http://cr.yp.to/publicfile.html

MASTER_SITES=	http://cr.yp.to/publicfile/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	'be conservative'
PERMIT_PACKAGE_FTP=	'be conservative'
PERMIT_DISTFILES_CDROM=	'be conservative'
PERMIT_DISTFILES_FTP=	'be conservative'

NO_CONFIGURE=	yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise:${PORTSDIR}/sysutils/daemontools \
		tcpserver:${PORTSDIR}/net/ucspi-tcp

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/publicfile > ${WRKSRC}/conf-home

.include <bsd.port.mk>
