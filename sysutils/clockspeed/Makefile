# $OpenBSD: Makefile,v 1.1.1.1 2001/02/22 10:49:25 camield Exp $

DISTNAME=	clockspeed-0.62
HOMEPAGE=	http://cr.yp.to/clockspeed.html

CATEGORIES=	sysutils
NEED_VERSION=	1.340
MAINTAINER=	Brian Kifiak <bk@rt.fm>

MASTER_SITES=	http://cr.yp.to/clockspeed/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/clockspeed > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX}/clockspeed > ${WRKSRC}/conf-home

post-install:
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/clockspeed/README

.include <bsd.port.mk>
