# $OpenBSD: Makefile,v 1.56 2005/11/21 02:14:47 kevlo Exp $

COMMENT=	"shell-like command line ftp and sftp client"

DISTNAME=	lftp-3.3.4
CATEGORIES=	net
MASTER_SITES=	http://ftp.yars.free.net/pub/source/lftp/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c crypto curses m readline ssl stdc++ util

LIB_DEPENDS=	expat.4::textproc/expat

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/share/examples/lftp/lftp.conf-sample

.include <bsd.port.mk>
