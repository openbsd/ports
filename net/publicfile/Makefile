# $OpenBSD: Makefile,v 1.12 2001/06/07 12:43:32 camield Exp $

COMMENT=	"read-only anonymous FTP and HTTP server"

DISTNAME=	publicfile-0.52
HOMEPAGE=	http://cr.yp.to/publicfile.html
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>
CATEGORIES=	net www
NEED_VERSION=	1.402

MASTER_SITES=	http://cr.yp.to/publicfile/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# datasize limit in 'run' files is too low for ld.so
# to be able to pull in libc
LDFLAGS+=	-static

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise::sysutils/daemontools \
		tcpserver::net/ucspi-tcp

FLAVORS=	compat
FLAVOR?=

.if ${FLAVOR:L:Mcompat}
PATCH_LIST=patch-Makefile patch-compat
.else
PATCH_LIST=patch-Makefile
.endif

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${CC} -s ${LDFLAGS} > ${WRKSRC}/conf-ld
	@echo ${PREFIX}/publicfile > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX}/publicfile > ${WRKSRC}/conf-home

.include <bsd.port.mk>
