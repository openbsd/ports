# $OpenBSD: Makefile,v 1.15 2000/09/06 20:50:13 brad Exp $

DISTNAME=	curl-7.2.1
CATEGORIES=	net
NEED_VERSION=	1.324
MASTER_SITES=	http://curl.haxx.se/download/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/

HOMEPAGE=	http://curl.haxx.se/

MAINTAINER=	markus@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-thread

DOCS=	CHANGES LEGAL MPL-1.0.txt README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/curl
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/curl

.include <bsd.port.mk>
