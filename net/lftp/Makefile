# $OpenBSD: Makefile,v 1.34 2002/09/19 06:03:32 kevlo Exp $

COMMENT=	"shell-like command line ftp client"

DISTNAME=	lftp-2.6.2
CATEGORIES=     net
MASTER_SITES=	http://the.wiretapped.net/mirrors/lftp/ \
		ftp://ftp.ayamura.org/pub/lftp/ \
		${MASTER_SITE_SUNSITE:=system/network/file-transfer/} \
		ftp://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/ \
		http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/

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

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/share/examples/lftp/lftp.conf-sample

.include <bsd.port.mk>
