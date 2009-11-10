# $OpenBSD: Makefile,v 1.69 2009/11/10 19:13:49 naddy Exp $

COMMENT=	get files from FTP, Gopher, HTTP or HTTPS servers

DISTNAME=	curl-7.19.7
SHARED_LIBS +=  curl                 14.1     # .5.1
CATEGORIES=	net
MASTER_SITES=	http://curl.haxx.se/download/ \
		ftp://ftp.sunet.se/pub/www/utilities/curl/ \
		ftp://cool.haxx.se/curl/ \
		ftp://ftp.fu-berlin.de/pub/unix/network/curl/ \
		http://curl.linuxworx.com.au/ \
		http://www.cubic.ch/mirror/curl/ \
		http://curl.webmeta.com/ \
		ftp://gd.tuwien.ac.ut/utils/archivers/curl/

HOMEPAGE=	http://curl.haxx.se/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	idn.>=16::devel/libidn
WANTLIB=	c crypto ssl z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ca-bundle=/etc/ssl/cert.pem \
		--with-random="/dev/arandom" \
		--with-libidn=${LOCALBASE} \
		--without-libssh2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	cd ${WRKSRC}; ${INSTALL_DATA} curl-style.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
