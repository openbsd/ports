# $OpenBSD: Makefile,v 1.40 2015/03/24 13:35:09 dcoppa Exp $

COMMENT=		BitTorrent library written in C++

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.13.4
EPOCH=			0
SHARED_LIBS +=  	torrent 21.0	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto m pthread stdc++ z
BUILD_DEPENDS=		devel/cppunit

USE_LIBTOOL=		gnu
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-debug

.include <bsd.port.mk>
