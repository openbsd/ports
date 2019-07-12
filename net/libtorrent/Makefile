# $OpenBSD: Makefile,v 1.60 2019/07/12 20:48:31 sthen Exp $

COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.13.6
EPOCH=			0
REVISION=		7
SHARED_LIBS +=  	torrent 22.1	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://rtorrent.net/downloads/

WANTLIB=		crypto m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/cppunit

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-instrumentation \
			--disable-mincore \
			--disable-debug

CXXFLAGS +=		-std=c++11

# this patches *only* files containing tr1 to no longer refer to tr1
# we do it pre-patch, because autoconf passes right after us
pre-patch:
	find ${WRKDIST} -type f|xargs fgrep -lw tr1|xargs sed -i.bak -e 's,<tr1/,<,' -e 's/std::tr1/std/g'
.include <bsd.port.mk>
