# $OpenBSD: Makefile,v 1.5 2000/04/26 14:20:18 camield Exp $

DISTNAME=	daemontools-0.70
HOMEPAGE=	http://cr.yp.to/daemontools.html
CATEGORIES=	sysutils
MAINTAINER=	cd@sentia.nl

MASTER_SITES=	http://cr.yp.to/daemontools/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_CONFIGURE=	Yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check

FAKE=	Yes

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
