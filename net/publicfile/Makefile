# $OpenBSD: Makefile,v 1.8 2000/09/21 08:14:55 camield Exp $

DISTNAME=	publicfile-0.52
HOMEPAGE=	http://cr.yp.to/publicfile.html
CATEGORIES=	net
NEED_VERSION=	1.230
MAINTAINER=	cd@sentia.nl

MASTER_SITES=	http://cr.yp.to/publicfile/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise::sysutils/daemontools \
		tcpserver::net/ucspi-tcp

FLAVORS=	compat
FLAVOR?=

.if ${FLAVOR:L:Mcompat}
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PATCH_LIST=patch-Makefile patch-compat
.else
PATCH_LIST=patch-Makefile
.endif

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/publicfile > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX}/publicfile > ${WRKSRC}/conf-home

.include <bsd.port.mk>
