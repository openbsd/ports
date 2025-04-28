COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.14.0
REVISION=		0
EPOCH=			0
SHARED_LIBS +=  	torrent 22.1	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/rakshasa/rtorrent-archive/raw/master/

WANTLIB=		crypto cppunit m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/cppunit

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-debug \
			--disable-execinfo \
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
