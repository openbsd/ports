# $OpenBSD: Makefile,v 1.70 2008/02/13 16:27:10 okan Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-3.6.1
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
	${INSTALL_DATA} ${WRKSRC}/lftp.conf \
		${PREFIX}/share/examples/lftp/lftp.conf-sample

.include <bsd.port.mk>
