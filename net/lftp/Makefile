# $OpenBSD: Makefile,v 1.19 2001/08/29 15:23:36 kevlo Exp $

COMMENT=	"shell-like command line ftp client"

DISTNAME=	lftp-2.4.2
CATEGORIES=     net
NEED_VERSION=	1.448
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/
MASTER_SITE_SUBDIR= system/network/file-transfer/

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	intl.1::devel/gettext

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS=	--with-ssl
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/lib/lftp/lftp.conf-sample

.include <bsd.port.mk>
