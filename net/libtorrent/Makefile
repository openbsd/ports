# $OpenBSD: Makefile,v 1.28 2011/12/01 17:10:40 dcoppa Exp $

COMMENT=		BitTorrent library written in C++

DISTNAME=		libtorrent-0.12.9
SHARED_LIBS +=  	torrent              18.0     # .14.1
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto m sigc-2.0 stdc++
BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		devel/libsigc++-2

USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-debug
CONFIGURE_ENV=		OPENSSL_CFLAGS=-I/usr/include \
			OPENSSL_LIBS=-lcrypto

.include <bsd.port.mk>
