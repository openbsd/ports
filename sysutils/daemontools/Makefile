# $OpenBSD: Makefile,v 1.2 2000/02/28 11:52:46 camield Exp $

DISTNAME=	daemontools-0.61
CATEGORIES=	sysutils
MAINTAINER=	cd@sentia.nl
HOMEPAGE=	http://cr.yp.to/daemontools.html

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	'be conservative'
PERMIT_PACKAGE_FTP=	'be conservative'
PERMIT_DISTFILES_CDROM=	'be conservative'
PERMIT_DISTFILES_FTP=	'be conservative'

MASTER_SITES=	http://cr.yp.to/daemontools/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

NO_CONFIGURE=	yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
