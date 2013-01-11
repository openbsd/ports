# $OpenBSD: Makefile,v 1.34 2013/01/11 13:44:25 ajacoutot Exp $

COMMENT=		BitTorrent library written in C++

DISTNAME=		libtorrent-0.12.9
REVISION=		1
EPOCH=			0
SHARED_LIBS +=  	torrent 20.0	# .14.1
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
