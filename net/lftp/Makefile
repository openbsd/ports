# $OpenBSD: Makefile,v 1.15 2001/05/21 04:00:35 kevlo Exp $

COMMENT=	"shell-like command line ftp client"

DISTNAME=	lftp-2.3.10
CATEGORIES=     net
NEED_VERSION=	1.402
MASTER_SITES=	http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS=	--with-ssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/lib/lftp/lftp.conf-sample

.include <bsd.port.mk>
