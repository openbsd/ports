# $OpenBSD: Makefile,v 1.4 2000/09/28 09:41:58 kevlo Exp $

DISTNAME=	lftp-2.3.1
CATEGORIES=     net
NEED_VERSION=	1.337
MASTER_SITES=	http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS= 	msgfmt::devel/gettext
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/lib/lftp/lftp.conf.sample

.include <bsd.port.mk>
