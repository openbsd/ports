# $OpenBSD: Makefile,v 1.9 2001/01/04 14:24:16 kevlo Exp $

DISTNAME=	lftp-2.3.6
CATEGORIES=     net
NEED_VERSION=	1.337
MASTER_SITES=	http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu 

FLAVORS=	ssl
FLAVOR?=

.if ${FLAVOR:L} == "ssl"
CONFIGURE_ARGS=	--with-ssl
.else
CONFIGURE_ARGS=	--without-ssl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/lib/lftp/lftp.conf.sample

.include <bsd.port.mk>
