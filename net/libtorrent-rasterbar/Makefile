# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:31 sthen Exp $

COMMENT =		C++ library implementing a BitTorrent client

MODPY_EGG_VERSION =	1.1.13
DISTNAME =		libtorrent-rasterbar-${MODPY_EGG_VERSION}

SHARED_LIBS +=  	torrent-rasterbar 1.0	# 9.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += boost_chrono-mt boost_python boost_random-mt boost_system-mt
WANTLIB += crypto m ssl
WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/libtorrent-${MODPY_EGG_VERSION:S/./_/g}/

MODULES =		lang/python

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-python-binding \
			--with-boost-system=boost_system-mt \
			--with-libiconv
CONFIGURE_ENV +=	CPPFLAGS="-Wno-deprecated-declarations \
				  -Wno-macro-redefined \
				  -pthread" \
			PYTHON_CXXFLAGS="${PYTHON_CXXFLAGS} -std=gnu++14"
MAKE_ENV =		CC="${CC}" CXX="${CXX}"
CXXFLAGS +=		-std=gnu++14

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

pre-configure:
	sed -i 's,-Os,,g' ${WRKSRC}/configure

.include <bsd.port.mk>
