# $OpenBSD: Makefile,v 1.3 2000/03/13 09:24:03 camield Exp $

DISTNAME=	daemontools-0.70
HOMEPAGE=	http://cr.yp.to/daemontools.html
CATEGORIES=	sysutils
MAINTAINER=	cd@sentia.nl

PERMIT_PACKAGE_CDROM=	'be conservative'
PERMIT_PACKAGE_FTP=	'be conservative'
PERMIT_DISTFILES_CDROM=	'be conservative'
PERMIT_DISTFILES_FTP=	'be conservative'

MASTER_SITES=	http://cr.yp.to/daemontools/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

NO_CONFIGURE=	Yes
ALL_TARGET=	default WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

FAKE=	Yes

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
