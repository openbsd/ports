# $OpenBSD: Makefile,v 1.38 2013/10/18 14:29:16 miod Exp $

COMMENT=		BitTorrent library written in C++

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.12.9
REVISION=		2
EPOCH=			0
SHARED_LIBS +=  	torrent 20.0	# .14.1
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto m sigc-2.0 stdc++
BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		devel/libsigc++-2


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-debug
CONFIGURE_ENV=		OPENSSL_CFLAGS=-I/usr/include \
			OPENSSL_LIBS=-lcrypto

.include <bsd.port.mk>
