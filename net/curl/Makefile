# $OpenBSD: Makefile,v 1.34 2002/04/16 22:49:36 brad Exp $

COMMENT=	"get files from FTP, Gopher, HTTP or HTTPS servers"

DISTNAME=	curl-7.9.6
CATEGORIES=	net
NEED_VERSION=	1.516
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

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-thread \
		 --with-random="/dev/arandom"

FLAVORS=	kerberos
FLAVOR?=

.if ${FLAVOR:L:Mkerberos}
CONFIGURE_ARGS+= --with-krb4-includes="/usr/include/kerberosIV" \
		 --disable-ipv6
.endif

DOCS=	CHANGES LEGAL MITX.txt README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/curl
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/curl

.include <bsd.port.mk>
