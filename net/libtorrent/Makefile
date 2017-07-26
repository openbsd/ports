# $OpenBSD: Makefile,v 1.52 2017/07/26 22:45:28 sthen Exp $

COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.13.6
EPOCH=			0
REVISION=		2
SHARED_LIBS +=  	torrent 22.1	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/
MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://rtorrent.net/downloads/

WANTLIB=		crypto m pthread ${COMPILER_LIBCXX} z

MODULES=		gcc4
# for __sync atomic ops
MODGCC4_ARCHS=		arm
MODGCC4_LANGS=		c++

BUILD_DEPENDS=		devel/cppunit

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-instrumentation \
			--disable-debug

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# this patches *only* files containing tr1 to no longer refer to tr1
# we do it pre-patch, because autoconf passes right after us
pre-patch:
	find ${WRKDIST} -type f|xargs fgrep -lw tr1|xargs sed -i.bak -e 's,<tr1/,<,' -e 's/std::tr1/std/g'
CXXFLAGS +=	-std=c++11
# some patches involve the tr1 stuff
PATCH_LIST =	patch-* clangpatch-*
.endif
.include <bsd.port.mk>
