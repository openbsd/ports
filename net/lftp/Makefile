# $OpenBSD: Makefile,v 1.2 2000/07/18 02:08:57 kevlo Exp $

DISTNAME=	lftp-2.2.4
CATEGORIES=     net
NEED_VERSION=	1.314
MASTER_SITES=	http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS= 	msgfmt::devel/gettext
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu 
CONFIGURE_ARGS+=	--sysconfdir="/etc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/lib/lftp/lftp.conf.sample

.include <bsd.port.mk>
