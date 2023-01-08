COMMENT =		C++ library implementing a BitTorrent client

V =			1.2.17
DISTNAME =		libtorrent-rasterbar-${V}
REVISION =		2

SHARED_LIBS +=  	torrent-rasterbar 6.0	# 10.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_MAJORMINOR}-mt crypto iconv
WANTLIB += m ssl

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/v${V}/

# cmake must come first for correct do-* targets
MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-Dpython-bindings=ON \
			-Dbuild_tests=ON

# https://github.com/arvidn/libtorrent/issues/6468
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17

ALL_TARGET =		torrent-rasterbar \
			python-libtorrent

# build shared library and python module/bindings only to defer test compilation
do-build:
	@${MODCMAKE_BUILD_TARGET} -t ${ALL_TARGET}

# build whatever is left (+200 test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
