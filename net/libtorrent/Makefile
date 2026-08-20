COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

V =			0.16.20
DISTNAME=		libtorrent-$V
EPOCH=			0
REVISION=		0
SHARED_LIBS +=  	torrent 25.0	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/rakshasa/rtorrent/releases/download/v$V/

WANTLIB += ${COMPILER_LIBCXX} crypto execinfo m z
WANTLIB += curl nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl ssl

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		net/curl
TEST_DEPENDS =		devel/cppunit

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.72
CONFIGURE_ARGS =	--disable-debug \
			--disable-instrumentation \
			--disable-mincore \
			--enable-static \
			--with-kqueue \
			--without-epoll

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# silence build log spam
CXXFLAGS +=		-Wno-deprecated-declarations \
			-Wno-exceptions

.include <bsd.port.mk>
