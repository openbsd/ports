# $OpenBSD: Makefile,v 1.47 2017/04/10 11:46:32 sthen Exp $

COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.13.6
EPOCH=			0
REVISION=		0
SHARED_LIBS +=  	torrent 22.0	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/
MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://rtorrent.net/downloads/

WANTLIB=		crypto m pthread ${LIBCXX} z

MODULES=		gcc4
# for __sync atomic ops
MODGCC4_ARCHS=		arm
MODGCC4_LANGS=		c++

BUILD_DEPENDS=		devel/cppunit

USE_LIBTOOL=		gnu
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-instrumentation \
			--disable-debug

.include <bsd.port.mk>
