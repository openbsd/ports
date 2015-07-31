# $OpenBSD: Makefile,v 1.41 2015/07/31 16:08:44 sthen Exp $

COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-mips64 =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.13.4
EPOCH=			0
REVISION=		0
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

.include <bsd.port.arch.mk>

# for 64-bit atomic ops
.if ${ARCH:Mi386}
CFLAGS+=	-march=i586 -fomit-frame-pointer
CXXFLAGS+=	-march=i586 -fomit-frame-pointer
.endif

.include <bsd.port.mk>
