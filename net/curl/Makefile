# $OpenBSD: Makefile,v 1.41 2003/06/01 21:43:49 brad Exp $

COMMENT=	"get files from FTP, Gopher, HTTP or HTTPS servers"

DISTNAME=	curl-7.10.5
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

MAINTAINER=	Brad Smith <brad@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-random="/dev/arandom"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/curl
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	cd ${WRKSRC}; ${INSTALL_DATA} README ${PREFIX}/share/doc/curl
	cd ${WRKSRC}; ${INSTALL_DATA} curl-style.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
