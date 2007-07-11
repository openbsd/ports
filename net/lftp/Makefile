# $OpenBSD: Makefile,v 1.67 2007/07/11 11:05:38 aanriot Exp $

COMMENT=	"shell-like command line ftp and sftp client"

DISTNAME=	lftp-3.5.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c crypto curses expat m readline ssl stdc++ util

MASTER_SITES=	http://ftp.yars.free.net/pub/source/lftp/ \
		http://ftp.yars.free.net/pub/source/lftp/old/
EXTRACT_SUFX=	.tar.bz2

USE_LIBTOOL=	Yes
USE_X11=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lftp
	${INSTALL_DATA} ${WRKSRC}/lftp.conf ${PREFIX}/share/examples/lftp/lftp.conf-sample

.include <bsd.port.mk>
