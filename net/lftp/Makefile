# $OpenBSD: Makefile,v 1.21 2001/09/24 06:04:15 kevlo Exp $

COMMENT=	"shell-like command line ftp client"

DISTNAME=	lftp-2.4.4
CATEGORIES=     net
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/
MASTER_SITE_SUBDIR= system/network/file-transfer/

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS=	--with-ssl
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	gettext

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/lib/lftp/lftp.conf-sample

.include <bsd.port.mk>
