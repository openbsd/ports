# $OpenBSD: Makefile,v 1.36 2003/01/10 05:41:18 kevlo Exp $

COMMENT=	"shell-like command line ftp client"

DISTNAME=	lftp-2.6.4
CATEGORIES=	net
MASTER_SITES=	http://the.wiretapped.net/mirrors/lftp/ \
		http://the.wiretapped.net/mirrors/lftp/old/ \
		ftp://ftp.ayamura.org/pub/lftp/ \
		ftp://ftp.ayamura.org/pub/lftp/old/ \
		ftp://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/ \
		ftp://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/old/ \
		http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/ \
		http://ftp.yars.free.net/pub/software/unix/net/ftp/client/lftp/old/
EXTRACT_SUFX=	.tar.bz2

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
